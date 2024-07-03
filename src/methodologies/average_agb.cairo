use baseline::methodologies::ipcc::{Table3A14Data, TABLE3A11};

fn averageAGB(country: felt252, duration: u32, forest_type: felt252) -> u32 {
    let data: Table3A14Data = TABLE3A11(country);

    if forest_type == 'old' {
        // (biomass + (AGB_old + AGB_old_growth * duration))/2
        return (data.biomass + (data.AGB_old + data.AGB_old_growth * duration)) / 2;
    } else if forest_type == 'new' {
        // (biomass + (AGB_new + AGB_new_growth * duration))/2
        return (data.biomass + (data.AGB_new + data.AGB_new_growth * duration)) / 2;
    } else {
        0
    }
}

#[cfg(test)]
mod tests {
    use super::{Table3A14Data, TABLE3A11, averageAGB};

    #[test]
    fn test_table3a14() {
        let data = TABLE3A11('Austria');
        assert_eq!(data.volume, 0);
        assert_eq!(data.biomass, 250);
        assert_eq!(data.source, '');
        assert_eq!(data.climate_domain, 'temperate');
        assert_eq!(data.ecological_zone, 'temperate oceanic forests');
        assert_eq!(data.AGB_old, 180);
        assert_eq!(data.AGB_new, 160);
        assert_eq!(data.AGB_old_growth, 5);
        assert_eq!(data.AGB_new_growth, 5);
    }

    #[test]
    fn test_averageAGB() {
        assert_eq!(averageAGB('France', 20, 'new'), 136);
    }
}
