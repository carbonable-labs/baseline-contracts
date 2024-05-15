// Implementation of Clean Development Mechanism A/R Methodological tool
// https://cdm.unfccc.int/methodologies/ARmethodologies/tools/ar-am-tool-14-v4.1.pdf

use cubit::f64::types::fixed::{Fixed, FixedTrait, ONE};

// const CTREE_BASELINE = (44 / 12) * CFTREE * bFOREST * (1 + treeRootShoot) * treeCrownCover * ha;

// // Calculating CSHRUB,t
// const CSHRUB_t = (44 / 12) * CFS * (1 + shrubRootShoot) * shrubArea * shrubBiomass * bFOREST * shrubCrownCover;

// // Final CO2 estimated value
// const finalCO2Estimated = CTREE_BASELINE + CSHRUB_t;

// CSHRUB,T page 20 Equation 26.
// cfs:
// rs: Root-tree ratio
// a_shrub_i
#[derive(Drop, Serde)]
pub struct C_SHRUB_INPUT {
    pub cfs: Fixed,
    pub rs: Fixed,
    pub a_shrub_i: Span<Fixed>,
    pub bdrsf: Span<Fixed>,
    pub b_forest: Span<Fixed>,
    pub cc_shrub: Span<Fixed>
}

fn compute_c_shrub(input: C_SHRUB_INPUT) -> Fixed {
    let c = FixedTrait::new_unscaled(44, false) / FixedTrait::new_unscaled(12, false);
    let mut res = c * input.cfs * (FixedTrait::new(ONE, false) + input.rs);
    let bdrsf_len = input.bdrsf.len();
    let b_forest_len = input.b_forest.len();
    let cc_shrub_len = input.cc_shrub.len();
    if bdrsf_len == 0 {
        return FixedTrait::new_unscaled(0, false);
    } else {
        assert(bdrsf_len == b_forest_len, 'length mismatch');
        assert(b_forest_len == cc_shrub_len, 'length mismatch');
        let mut sub_res = FixedTrait::new_unscaled(0, false);
        let mut i = 0;
        loop {
            if i == cc_shrub_len {
                break;
            }
            let a_shrub_i = *input.a_shrub_i.at(i);
            let bdrsf = *input.bdrsf.at(i);
            let b_forest = *input.b_forest.at(i);
            let cc_shrub = *input.cc_shrub.at(i);
            sub_res += bdrsf * b_forest * cc_shrub * a_shrub_i;
            i += 1;
        };
        return res * sub_res;
    }
}


// CTREE page 17 Equation 21.
// cftree:
// treeRootShoot: Root-tree ratio
// a_shrub_i

#[derive(Drop, Serde)]
pub struct C_TREE_INPUT {
    pub cf_tree: Fixed,
    pub b_forest: Fixed,
    pub r_tree: Fixed,
    pub cc_tree: Fixed,
    pub area: Fixed,
}


// CTREE_BASELINE = 44/12 x CFTREE x bFOREST x (1 + RTREE) x CCTREE_BSL x A
fn compute_c_tree(input: C_TREE_INPUT) -> Fixed {
    let c = FixedTrait::new_unscaled(44, false) / FixedTrait::new_unscaled(12, false);

    let mut res = c
        * input.cf_tree
        * input.b_forest
        * (FixedTrait::new(ONE, false) + input.r_tree)
        * input.cc_tree
        * input.area;

    return res;
}

pub fn estimate_project(
    shrub_input_start: C_SHRUB_INPUT,
    tree_input_start: C_TREE_INPUT,
    shrub_input_end: C_SHRUB_INPUT,
    tree_input_end: C_TREE_INPUT
) -> Fixed {
    let start = compute_c_shrub(shrub_input_start) + compute_c_tree(tree_input_start);
    let end = compute_c_shrub(shrub_input_end) + compute_c_tree(tree_input_end);
    end - start
}
