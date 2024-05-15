use baseline::methodologies::{artool14::{C_TREE_INPUT, C_SHRUB_INPUT, estimate_project}};

use cubit::f64::types::fixed::Fixed;

#[starknet::interface]
trait IExternalTrait<TContractState> {
    fn artool14_estimate(
        ref self: TContractState,
        s_start: C_SHRUB_INPUT,
        t_start: C_TREE_INPUT,
        s_end: C_SHRUB_INPUT,
        t_end: C_TREE_INPUT
    ) -> Fixed;

    fn get_artool14_analytics(self: @TContractState) -> (u128, Fixed);
}

#[starknet::contract]
mod BaselineMethodologies {
    use baseline::methodologies::{artool14::{C_TREE_INPUT, C_SHRUB_INPUT, estimate_project}};

    use cubit::f64::types::fixed::Fixed;

    #[storage]
    struct Storage {
        artool14_call_count: u128,
        artool14_carbon_count: Fixed,
    }

    #[abi(embed_v0)]
    impl ExternalImpl of super::IExternalTrait<ContractState> {
        fn artool14_estimate(
            ref self: ContractState,
            s_start: C_SHRUB_INPUT,
            t_start: C_TREE_INPUT,
            s_end: C_SHRUB_INPUT,
            t_end: C_TREE_INPUT
        ) -> Fixed {
            let count = self.artool14_call_count.read();
            self.artool14_call_count.write(count + 1);

            let res = estimate_project(s_start, t_start, s_end, t_end);
            self.artool14_carbon_count.write(self.artool14_carbon_count.read() + res);
            res
        }

        fn get_artool14_analytics(self: @ContractState) -> (u128, Fixed) {
            (self.artool14_call_count.read(), self.artool14_carbon_count.read())
        }
    }
}

#[cfg(test)]
mod test {
    use baseline::carbon_baseline::IExternalTraitDispatcherTrait;
    use baseline::methodologies::{artool14::{C_TREE_INPUT, C_SHRUB_INPUT}};

    use super::{IExternalTrait, IExternalTraitLibraryDispatcher};
    use super::BaselineMethodologies;

    use starknet::ClassHash;

    use cubit::f64::{test::helpers::assert_precise, types::fixed::{Fixed, FixedTrait}};

    fn f(mag: u64) -> Fixed {
        FixedTrait::new_unscaled(mag, false)
    }

    #[test]
    fn test_artool14_estimate() {
        let methodo_lib = IExternalTraitLibraryDispatcher {
            class_hash: BaselineMethodologies::TEST_CLASS_HASH.try_into().unwrap()
        };
        let s_1 = C_SHRUB_INPUT {
            cfs: f(47) / f(100),
            rs: f(4) / f(10),
            a_shrub_i: array![f(4)].span(),
            bdrsf: array![f(1) / f(10)].span(),
            b_forest: array![f(220)].span(),
            cc_shrub: array![f(7) / f(100)].span(),
        };
        let t_1 = C_TREE_INPUT {
            cf_tree: f(47) / f(100),
            r_tree: f(25) / f(100),
            b_forest: f(220),
            cc_tree: f(9) / f(100),
            area: f(4),
        };
        let s_2 = C_SHRUB_INPUT {
            cfs: f(0),
            rs: f(0),
            a_shrub_i: array![f(0)].span(),
            bdrsf: array![f(0)].span(),
            b_forest: array![f(0)].span(),
            cc_shrub: array![f(0)].span(),
        };
        let t_2 = C_TREE_INPUT {
            cf_tree: f(47) / f(100),
            r_tree: f(25) / f(100),
            b_forest: f(220),
            cc_tree: f(95) / f(100),
            area: f(4),
        };

        let res = methodo_lib.artool14_estimate(s_1, t_1, s_2, t_2);

        let expected = FixedTrait::new_unscaled(161541, false)
            / FixedTrait::new_unscaled(100, false);

        assert_precise(
            res, expected.mag.into(), 'wrong estimation', Option::Some(42949673)
        ); // 1e-2 precision
    }
}
