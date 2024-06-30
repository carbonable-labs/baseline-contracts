// TABLE 3A.1.4 (CONTINUED)
// AVERAGE GROWING STOCK VOLUME (1) AND
// ABOVEGROUND BIOMASS CONTENT (2) (DRY MATTER) IN
// FOREST IN 2000. (SOURCE FRA 2000)

#[derive(Copy, Drop, PartialEq)]
struct Table3A14Data {
    volume: u32,
    biomass: u32,
    source: felt252,
    climate_domain: felt252,
    ecological_zone: felt252,
    AGB_old: u32,
    AGB_new: u32,
    AGB_old_growth: u32,
    AGB_new_growth: u32
}

type selfName = felt252;

fn TABLE3A11(self: selfName) -> Table3A14Data {
    self.into()
}

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

impl selfInto3A14Impl of Into<selfName, Table3A14Data> {
    fn into(self: selfName) -> Table3A14Data {
        if (self == 'Algeria') {
            Table3A14Data {
                volume: 0,
                biomass: 75,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Angola') {
            Table3A14Data {
                volume: 0,
                biomass: 54,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Benin') {
            Table3A14Data {
                volume: 0,
                biomass: 195,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Botswana') {
            Table3A14Data {
                volume: 0,
                biomass: 63,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Burkina Faso') {
            Table3A14Data {
                volume: 0,
                biomass: 16,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Burundi') {
            Table3A14Data {
                volume: 0,
                biomass: 187,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Cameroon') {
            Table3A14Data {
                volume: 0,
                biomass: 131,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Cape Verde') {
            Table3A14Data {
                volume: 0,
                biomass: 127,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Central African Republic') {
            Table3A14Data {
                volume: 0,
                biomass: 113,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Chad') {
            Table3A14Data {
                volume: 0,
                biomass: 16,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Comoros') {
            Table3A14Data {
                volume: 0,
                biomass: 65,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Congo') {
            Table3A14Data {
                volume: 0,
                biomass: 213,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Cote d\'Ivoire') {
            Table3A14Data {
                volume: 0,
                biomass: 130,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Dem. Rep. of the Congo') {
            Table3A14Data {
                volume: 0,
                biomass: 225,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Djibouti') {
            Table3A14Data {
                volume: 0,
                biomass: 46,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Egypt') {
            Table3A14Data {
                volume: 0,
                biomass: 106,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Equatorial Guinea') {
            Table3A14Data {
                volume: 0,
                biomass: 158,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Eritrea') {
            Table3A14Data {
                volume: 0,
                biomass: 32,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Ethiopia') {
            Table3A14Data {
                volume: 0,
                biomass: 79,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Gabon') {
            Table3A14Data {
                volume: 0,
                biomass: 137,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Gambia') {
            Table3A14Data {
                volume: 0,
                biomass: 22,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Ghana') {
            Table3A14Data {
                volume: 0,
                biomass: 88,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Guinea') {
            Table3A14Data {
                volume: 0,
                biomass: 114,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Guinea-Bissau') {
            Table3A14Data {
                volume: 0,
                biomass: 20,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Kenya') {
            Table3A14Data {
                volume: 0,
                biomass: 48,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Lesotho') {
            Table3A14Data {
                volume: 0,
                biomass: 34,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Liberia') {
            Table3A14Data {
                volume: 0,
                biomass: 196,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Libyan Arab Jamahiriya') {
            Table3A14Data {
                volume: 0,
                biomass: 20,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical steppe',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Madagascar') {
            Table3A14Data {
                volume: 0,
                biomass: 194,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Malawi') {
            Table3A14Data {
                volume: 0,
                biomass: 143,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Mali') {
            Table3A14Data {
                volume: 0,
                biomass: 31,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Mauritania') {
            Table3A14Data {
                volume: 0,
                biomass: 6,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Mauritius') {
            Table3A14Data {
                volume: 0,
                biomass: 95,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Morocco') {
            Table3A14Data {
                volume: 0,
                biomass: 41,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Mozambique') {
            Table3A14Data {
                volume: 0,
                biomass: 55,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Namibia') {
            Table3A14Data {
                volume: 0,
                biomass: 12,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Niger') {
            Table3A14Data {
                volume: 0,
                biomass: 4,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Nigeria') {
            Table3A14Data {
                volume: 0,
                biomass: 184,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Reunion') {
            Table3A14Data {
                volume: 0,
                biomass: 160,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Rwanda') {
            Table3A14Data {
                volume: 0,
                biomass: 187,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Saint Helena') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Sao Tome and Principe') {
            Table3A14Data {
                volume: 0,
                biomass: 116,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Senegal') {
            Table3A14Data {
                volume: 0,
                biomass: 30,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Seychelles') {
            Table3A14Data {
                volume: 0,
                biomass: 49,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Sierra Leone') {
            Table3A14Data {
                volume: 0,
                biomass: 139,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Somalia') {
            Table3A14Data {
                volume: 0,
                biomass: 26,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'South Africa') {
            Table3A14Data {
                volume: 0,
                biomass: 81,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Sudan') {
            Table3A14Data {
                volume: 0,
                biomass: 12,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Swaziland') {
            Table3A14Data {
                volume: 0,
                biomass: 115,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Togo') {
            Table3A14Data {
                volume: 0,
                biomass: 155,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Tunisia') {
            Table3A14Data {
                volume: 0,
                biomass: 27,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical steppe',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Uganda') {
            Table3A14Data {
                volume: 0,
                biomass: 163,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'United Republic of Tanzania') {
            Table3A14Data {
                volume: 0,
                biomass: 60,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Western Sahara') {
            Table3A14Data {
                volume: 0,
                biomass: 59,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical steppe',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Zambia') {
            Table3A14Data {
                volume: 0,
                biomass: 104,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Zimbabwe') {
            Table3A14Data {
                volume: 0,
                biomass: 56,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Afghanistan') {
            Table3A14Data {
                volume: 0,
                biomass: 27,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Armenia') {
            Table3A14Data {
                volume: 0,
                biomass: 66,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Azerbaijan') {
            Table3A14Data {
                volume: 0,
                biomass: 105,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Bahrain') {
            Table3A14Data {
                volume: 0,
                biomass: 14,
                source: '', //TODO: check
                climate_domain: 'tropical',
                ecological_zone: 'tropical desert',
                AGB_old: 0,
                AGB_new: 0,
                AGB_old_growth: 0,
                AGB_new_growth: 0
            }
        } else if (self == 'Bangladesh') {
            Table3A14Data {
                volume: 0,
                biomass: 39,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Bhutan') {
            Table3A14Data {
                volume: 0,
                biomass: 178,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Brunei Darussalam') {
            Table3A14Data {
                volume: 0,
                biomass: 205,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Cambodia') {
            Table3A14Data {
                volume: 0,
                biomass: 69,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'China') {
            Table3A14Data {
                volume: 0,
                biomass: 61,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical humid forest',
                AGB_old: 220,
                AGB_new: 140,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Cyprus') {
            Table3A14Data {
                volume: 0,
                biomass: 21,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Dem People\'s Rep. of Korea') {
            Table3A14Data {
                volume: 0,
                biomass: 25,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forest',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'East Timor') {
            Table3A14Data {
                volume: 0,
                biomass: 136,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Georgia') {
            Table3A14Data {
                volume: 0,
                biomass: 97,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'India') {
            Table3A14Data {
                volume: 0,
                biomass: 73,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Indonesia') {
            Table3A14Data {
                volume: 0,
                biomass: 136,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Iran, Islamic Rep.') {
            Table3A14Data {
                volume: 0,
                biomass: 149,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Iraq') {
            Table3A14Data {
                volume: 0,
                biomass: 28,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical steppe',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Israel') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Japan') {
            Table3A14Data {
                volume: 0,
                biomass: 88,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Jordan') {
            Table3A14Data {
                volume: 0,
                biomass: 37,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical steppe',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Kazakhstan') {
            Table3A14Data {
                volume: 0,
                biomass: 18,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Kuwait') {
            Table3A14Data {
                volume: 0,
                biomass: 21,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical steppe',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Kyrgyzstan') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Lao People\'s Dem. Rep') {
            Table3A14Data {
                volume: 0,
                biomass: 31,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Lebanon') {
            Table3A14Data {
                volume: 0,
                biomass: 22,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Malaysia') {
            Table3A14Data {
                volume: 0,
                biomass: 205,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Maldives') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Mongolia') {
            Table3A14Data {
                volume: 0,
                biomass: 80,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Myanmar') {
            Table3A14Data {
                volume: 0,
                biomass: 57,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Nepal') {
            Table3A14Data {
                volume: 0,
                biomass: 109,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Oman') {
            Table3A14Data {
                volume: 0,
                biomass: 17,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Pakistan') {
            Table3A14Data {
                volume: 0,
                biomass: 27,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical steppe',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Philippines') {
            Table3A14Data {
                volume: 0,
                biomass: 114,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Qatar') {
            Table3A14Data {
                volume: 0,
                biomass: 12,
                source: '', //TODO: check
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical desert',
                AGB_old: 0,
                AGB_new: 0,
                AGB_old_growth: 0,
                AGB_new_growth: 0
            }
        } else if (self == 'Republic of Korea') {
            Table3A14Data {
                volume: 0,
                biomass: 36,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forest',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Saudi Arabia') {
            Table3A14Data {
                volume: 0,
                biomass: 12,
                source: '', //TODO: check
                climate_domain: 'tropical',
                ecological_zone: 'tropical desert',
                AGB_old: 0,
                AGB_new: 0,
                AGB_old_growth: 0,
                AGB_new_growth: 0
            }
        } else if (self == 'Singapore') {
            Table3A14Data {
                volume: 0,
                biomass: 205,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Sri Lanka') {
            Table3A14Data {
                volume: 0,
                biomass: 59,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Syrian Arab Rep.') {
            Table3A14Data {
                volume: 0,
                biomass: 28,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical steppe',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Tajikistan') {
            Table3A14Data {
                volume: 0,
                biomass: 10,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Thailand') {
            Table3A14Data {
                volume: 0,
                biomass: 29,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Turkey') {
            Table3A14Data {
                volume: 0,
                biomass: 74,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Turkmenistan') {
            Table3A14Data {
                volume: 0,
                biomass: 3,
                source: '', //TODO: check
                climate_domain: 'temperate',
                ecological_zone: 'temperate desert',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'United Arab Emirates') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '', //TODO: check
                climate_domain: 'temperate',
                ecological_zone: 'temperate desert',
                AGB_old: 0,
                AGB_new: 0,
                AGB_old_growth: 0,
                AGB_new_growth: 0
            }
        } else if (self == 'Uzbekistan') {
            Table3A14Data {
                volume: 0,
                biomass: 6,
                source: '', //TODO: check
                climate_domain: 'temperate',
                ecological_zone: 'temperate desert',
                AGB_old: 0,
                AGB_new: 0,
                AGB_old_growth: 0,
                AGB_new_growth: 0
            }
        } else if (self == 'Viet Nam') {
            Table3A14Data {
                volume: 0,
                biomass: 66,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'West Bank') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '', //TODO: check
                climate_domain: 'tropical',
                ecological_zone: 'tropical desert',
                AGB_old: 0,
                AGB_new: 0,
                AGB_old_growth: 0,
                AGB_new_growth: 0
            }
        } else if (self == 'Yemen') {
            Table3A14Data {
                volume: 0,
                biomass: 19,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'American Samoa') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Australia') {
            Table3A14Data {
                volume: 0,
                biomass: 57,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Cook Islands') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Fiji') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'French Polynesia') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Guam') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Kiribati') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Marshall Islands') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical shrubland',
                AGB_old: 70,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Micronesia') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Nauru') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'New Caledonia') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'New Zealand') {
            Table3A14Data {
                volume: 0,
                biomass: 217,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Niue') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Northern Mariana Isl.') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Palau') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Papua New Guinea') {
            Table3A14Data {
                volume: 0,
                biomass: 58,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Samoa') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Solomon Islands') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Tonga') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Vanuatu') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'monsoon forests', // tropical moist deciduous forests
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Albania') {
            Table3A14Data {
                volume: 0,
                biomass: 58,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Andorra') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Austria') {
            Table3A14Data {
                volume: 0,
                biomass: 250,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Belarus') {
            Table3A14Data {
                volume: 0,
                biomass: 80,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Belgium & Luxembourg') {
            Table3A14Data {
                volume: 0,
                biomass: 101,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Bosnia & Herzegovina') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Bulgaria') {
            Table3A14Data {
                volume: 0,
                biomass: 76,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Croatia') {
            Table3A14Data {
                volume: 0,
                biomass: 107,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Czech Republic') {
            Table3A14Data {
                volume: 0,
                biomass: 125,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Denmark') {
            Table3A14Data {
                volume: 0,
                biomass: 58,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Estonia') {
            Table3A14Data {
                volume: 0,
                biomass: 85,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Finland') {
            Table3A14Data {
                volume: 0,
                biomass: 50,
                source: '',
                climate_domain: 'boreal',
                ecological_zone: 'boreal coniferous forests',
                AGB_old: 50,
                AGB_new: 40,
                AGB_old_growth: 1,
                AGB_new_growth: 1
            }
        } else if (self == 'France') {
            Table3A14Data {
                volume: 0,
                biomass: 92,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forest',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Germany') {
            Table3A14Data {
                volume: 0,
                biomass: 134,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Greece') {
            Table3A14Data {
                volume: 0,
                biomass: 25,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Hungary') {
            Table3A14Data {
                volume: 0,
                biomass: 112,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Iceland') {
            Table3A14Data {
                volume: 0,
                biomass: 17,
                source: '',
                climate_domain: 'boreal',
                ecological_zone: 'boreal coniferous forests',
                AGB_old: 50,
                AGB_new: 40,
                AGB_old_growth: 1,
                AGB_new_growth: 1
            }
        } else if (self == 'Ireland') {
            Table3A14Data {
                volume: 0,
                biomass: 25,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Italy') {
            Table3A14Data {
                volume: 0,
                biomass: 74,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Latvia') {
            Table3A14Data {
                volume: 0,
                biomass: 93,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Liechtenstein') {
            Table3A14Data {
                volume: 0,
                biomass: 119,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Lithuania') {
            Table3A14Data {
                volume: 0,
                biomass: 99,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Malta') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Netherlands') {
            Table3A14Data {
                volume: 0,
                biomass: 107,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Norway') {
            Table3A14Data {
                volume: 0,
                biomass: 49,
                source: '',
                climate_domain: 'boreal',
                ecological_zone: 'boreal mountain systems',
                AGB_old: 30,
                AGB_new: 30,
                AGB_old_growth: 1,
                AGB_new_growth: 1
            }
        } else if (self == 'Poland') {
            Table3A14Data {
                volume: 0,
                biomass: 94,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Portugal') {
            Table3A14Data {
                volume: 0,
                biomass: 33,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Republic of Moldova') {
            Table3A14Data {
                volume: 0,
                biomass: 64,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Romania') {
            Table3A14Data {
                volume: 0,
                biomass: 124,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Russian Federation') {
            Table3A14Data {
                volume: 0,
                biomass: 56,
                source: '',
                climate_domain: 'boreal',
                ecological_zone: 'boreal coniferous forests',
                AGB_old: 50,
                AGB_new: 40,
                AGB_old_growth: 1,
                AGB_new_growth: 1
            }
        } else if (self == 'San Marino') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical humid forest',
                AGB_old: 220,
                AGB_new: 140,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Slovakia') {
            Table3A14Data {
                volume: 0,
                biomass: 142,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Slovenia') {
            Table3A14Data {
                volume: 0,
                biomass: 178,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Spain') {
            Table3A14Data {
                volume: 0,
                biomass: 24,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Sweden') {
            Table3A14Data {
                volume: 0,
                biomass: 63,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Switzerland') {
            Table3A14Data {
                volume: 0,
                biomass: 165,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'The FYR of Macedonia') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate mountain systems',
                AGB_old: 100,
                AGB_new: 100,
                AGB_old_growth: 3,
                AGB_new_growth: 3
            }
        } else if (self == 'Ukraine') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'United Kingdom') {
            Table3A14Data {
                volume: 0,
                biomass: 76,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'Yugoslavia') {
            Table3A14Data {
                volume: 0,
                biomass: 23,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Antigua and Barbuda') {
            Table3A14Data {
                volume: 0,
                biomass: 210,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Bahamas') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Barbados') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Belize') {
            Table3A14Data {
                volume: 0,
                biomass: 211,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Bermuda') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'British Virgin Islands') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Canada') {
            Table3A14Data {
                volume: 0,
                biomass: 83,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Cayman Islands') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Costa Rica') {
            Table3A14Data {
                volume: 0,
                biomass: 220,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Cuba') {
            Table3A14Data {
                volume: 0,
                biomass: 114,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Dominica') {
            Table3A14Data {
                volume: 0,
                biomass: 166,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Dominican Republic') {
            Table3A14Data {
                volume: 0,
                biomass: 53,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'El Salvador') {
            Table3A14Data {
                volume: 0,
                biomass: 202,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Greenland') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'polar', //TODO: check
                ecological_zone: '',
                AGB_old: 0,
                AGB_new: 0,
                AGB_old_growth: 0,
                AGB_new_growth: 0
            }
        } else if (self == 'Grenada') {
            Table3A14Data {
                volume: 0,
                biomass: 150,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Guadeloupe') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Guatemala') {
            Table3A14Data {
                volume: 0,
                biomass: 371,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Haiti') {
            Table3A14Data {
                volume: 0,
                biomass: 101,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Honduras') {
            Table3A14Data {
                volume: 0,
                biomass: 105,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Jamaica') {
            Table3A14Data {
                volume: 0,
                biomass: 171,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Martinique') {
            Table3A14Data {
                volume: 0,
                biomass: 5,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Mexico') {
            Table3A14Data {
                volume: 0,
                biomass: 54,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Montserrat') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Netherlands Antilles') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Nicaragua') {
            Table3A14Data {
                volume: 0,
                biomass: 161,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Panama') {
            Table3A14Data {
                volume: 0,
                biomass: 322,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Puerto Rico') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Saint Kitts and Nevis') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Saint Lucia') {
            Table3A14Data {
                volume: 0,
                biomass: 198,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Saint Pierre & Miquelon') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate continental forests',
                AGB_old: 120,
                AGB_new: 100,
                AGB_old_growth: 4,
                AGB_new_growth: 4
            }
        } else if (self == 'Saint Vincent and Grenadines') {
            Table3A14Data {
                volume: 0,
                biomass: 173,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Trinidad and Tobago') {
            Table3A14Data {
                volume: 0,
                biomass: 129,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'United States') {
            Table3A14Data {
                volume: 0,
                biomass: 108,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical humid forest',
                AGB_old: 220,
                AGB_new: 140,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'US Virgin Islands') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical moist deciduous forest',
                AGB_old: 180,
                AGB_new: 120,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Argentina') {
            Table3A14Data {
                volume: 0,
                biomass: 68,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical humid forest',
                AGB_old: 220,
                AGB_new: 140,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Bolivia') {
            Table3A14Data {
                volume: 0,
                biomass: 183,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical humid forest',
                AGB_old: 220,
                AGB_new: 140,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Brazil') {
            Table3A14Data {
                volume: 0,
                biomass: 209,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Chile') {
            Table3A14Data {
                volume: 0,
                biomass: 268,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical mountain systems',
                AGB_old: 140,
                AGB_new: 90,
                AGB_old_growth: 1,
                AGB_new_growth: 5
            }
        } else if (self == 'Colombia') {
            Table3A14Data {
                volume: 0,
                biomass: 196,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Ecuador') {
            Table3A14Data {
                volume: 0,
                biomass: 151,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Falkland Islands') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'temperate',
                ecological_zone: 'temperate oceanic forests',
                AGB_old: 180,
                AGB_new: 160,
                AGB_old_growth: 5,
                AGB_new_growth: 5
            }
        } else if (self == 'French Guiana') {
            Table3A14Data {
                volume: 0,
                biomass: 253,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Guyana') {
            Table3A14Data {
                volume: 0,
                biomass: 253,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Paraguay') {
            Table3A14Data {
                volume: 0,
                biomass: 59,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else if (self == 'Peru') {
            Table3A14Data {
                volume: 0,
                biomass: 245,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Suriname') {
            Table3A14Data {
                volume: 0,
                biomass: 253,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical rain forest',
                AGB_old: 300,
                AGB_new: 150,
                AGB_old_growth: 7,
                AGB_new_growth: 15
            }
        } else if (self == 'Uruguay') {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: 'subtropical',
                ecological_zone: 'subtropical humid forest',
                AGB_old: 220,
                AGB_new: 140,
                AGB_old_growth: 5,
                AGB_new_growth: 10
            }
        } else if (self == 'Venezuela') {
            Table3A14Data {
                volume: 0,
                biomass: 23,
                source: '',
                climate_domain: 'tropical',
                ecological_zone: 'tropical dry forest',
                AGB_old: 130,
                AGB_new: 60,
                AGB_old_growth: 3,
                AGB_new_growth: 8
            }
        } else {
            Table3A14Data {
                volume: 0,
                biomass: 0,
                source: '',
                climate_domain: '',
                ecological_zone: '',
                AGB_old: 0,
                AGB_new: 0,
                AGB_old_growth: 0,
                AGB_new_growth: 0
            }
        }
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
