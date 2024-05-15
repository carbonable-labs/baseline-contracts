// TABLE 3A.1.4 (CONTINUED)
// AVERAGE GROWING STOCK VOLUME (1) AND
// ABOVEGROUND BIOMASS CONTENT (2) (DRY MATTER) IN
// FOREST IN 2000. (SOURCE FRA 2000)

struct Table3A14Data {
    volume: u32,
    biomass: u32,
    source: felt252
}

type selfName = felt252;

fn TABLE3A11(self: selfName) -> Table3A14Data {
    self.into()
}

impl selfInto3A14Impl of Into<selfName, Table3A14Data> {
    fn into(self: selfName) -> Table3A14Data {
        if (self == 'Algeria') {
            Table3A14Data { volume: 0, biomass: 75, source: '' }
        } else if (self == 'Angola') {
            Table3A14Data { volume: 0, biomass: 54, source: '' }
        } else if (self == 'Benin') {
            Table3A14Data { volume: 0, biomass: 195, source: '' }
        } else if (self == 'Botswana') {
            Table3A14Data { volume: 0, biomass: 63, source: '' }
        } else if (self == 'Burkina Faso') {
            Table3A14Data { volume: 0, biomass: 16, source: '' }
        } else if (self == 'Burundi') {
            Table3A14Data { volume: 0, biomass: 187, source: '' }
        } else if (self == 'Cameroon') {
            Table3A14Data { volume: 0, biomass: 131, source: '' }
        } else if (self == 'Cape Verde') {
            Table3A14Data { volume: 0, biomass: 127, source: '' }
        } else if (self == 'Central African Republic') {
            Table3A14Data { volume: 0, biomass: 113, source: '' }
        } else if (self == 'Chad') {
            Table3A14Data { volume: 0, biomass: 16, source: '' }
        } else if (self == 'Comoros') {
            Table3A14Data { volume: 0, biomass: 65, source: '' }
        } else if (self == 'Congo') {
            Table3A14Data { volume: 0, biomass: 213, source: '' }
        } else if (self == 'Cote d\'Ivoire') {
            Table3A14Data { volume: 0, biomass: 130, source: '' }
        } else if (self == 'Dem. Rep. of the Congo') {
            Table3A14Data { volume: 0, biomass: 225, source: '' }
        } else if (self == 'Djibouti') {
            Table3A14Data { volume: 0, biomass: 46, source: '' }
        } else if (self == 'Egypt') {
            Table3A14Data { volume: 0, biomass: 106, source: '' }
        } else if (self == 'Equatorial Guinea') {
            Table3A14Data { volume: 0, biomass: 158, source: '' }
        } else if (self == 'Eritrea') {
            Table3A14Data { volume: 0, biomass: 32, source: '' }
        } else if (self == 'Ethiopia') {
            Table3A14Data { volume: 0, biomass: 79, source: '' }
        } else if (self == 'Gabon') {
            Table3A14Data { volume: 0, biomass: 137, source: '' }
        } else if (self == 'Gambia') {
            Table3A14Data { volume: 0, biomass: 22, source: '' }
        } else if (self == 'Ghana') {
            Table3A14Data { volume: 0, biomass: 88, source: '' }
        } else if (self == 'Guinea') {
            Table3A14Data { volume: 0, biomass: 114, source: '' }
        } else if (self == 'Guinea-Bissau') {
            Table3A14Data { volume: 0, biomass: 20, source: '' }
        } else if (self == 'Kenya') {
            Table3A14Data { volume: 0, biomass: 48, source: '' }
        } else if (self == 'Lesotho') {
            Table3A14Data { volume: 0, biomass: 34, source: '' }
        } else if (self == 'Liberia') {
            Table3A14Data { volume: 0, biomass: 196, source: '' }
        } else if (self == 'Libyan Arab Jamahiriya') {
            Table3A14Data { volume: 0, biomass: 20, source: '' }
        } else if (self == 'Madagascar') {
            Table3A14Data { volume: 0, biomass: 194, source: '' }
        } else if (self == 'Malawi') {
            Table3A14Data { volume: 0, biomass: 143, source: '' }
        } else if (self == 'Mali') {
            Table3A14Data { volume: 0, biomass: 31, source: '' }
        } else if (self == 'Mauritania') {
            Table3A14Data { volume: 0, biomass: 6, source: '' }
        } else if (self == 'Mauritius') {
            Table3A14Data { volume: 0, biomass: 95, source: '' }
        } else if (self == 'Morocco') {
            Table3A14Data { volume: 0, biomass: 41, source: '' }
        } else if (self == 'Mozambique') {
            Table3A14Data { volume: 0, biomass: 55, source: '' }
        } else if (self == 'Namibia') {
            Table3A14Data { volume: 0, biomass: 12, source: '' }
        } else if (self == 'Niger') {
            Table3A14Data { volume: 0, biomass: 4, source: '' }
        } else if (self == 'Nigeria') {
            Table3A14Data { volume: 0, biomass: 184, source: '' }
        } else if (self == 'Reunion') {
            Table3A14Data { volume: 0, biomass: 160, source: '' }
        } else if (self == 'Rwanda') {
            Table3A14Data { volume: 0, biomass: 187, source: '' }
        } else if (self == 'Saint Helena') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Sao Tome and Principe') {
            Table3A14Data { volume: 0, biomass: 116, source: '' }
        } else if (self == 'Senegal') {
            Table3A14Data { volume: 0, biomass: 30, source: '' }
        } else if (self == 'Seychelles') {
            Table3A14Data { volume: 0, biomass: 49, source: '' }
        } else if (self == 'Sierra Leone') {
            Table3A14Data { volume: 0, biomass: 139, source: '' }
        } else if (self == 'Somalia') {
            Table3A14Data { volume: 0, biomass: 26, source: '' }
        } else if (self == 'South Africa') {
            Table3A14Data { volume: 0, biomass: 81, source: '' }
        } else if (self == 'Sudan') {
            Table3A14Data { volume: 0, biomass: 12, source: '' }
        } else if (self == 'Swaziland') {
            Table3A14Data { volume: 0, biomass: 115, source: '' }
        } else if (self == 'Togo') {
            Table3A14Data { volume: 0, biomass: 155, source: '' }
        } else if (self == 'Tunisia') {
            Table3A14Data { volume: 0, biomass: 27, source: '' }
        } else if (self == 'Uganda') {
            Table3A14Data { volume: 0, biomass: 163, source: '' }
        } else if (self == 'United Republic of Tanzania') {
            Table3A14Data { volume: 0, biomass: 60, source: '' }
        } else if (self == 'Western Sahara') {
            Table3A14Data { volume: 0, biomass: 59, source: '' }
        } else if (self == 'Zambia') {
            Table3A14Data { volume: 0, biomass: 104, source: '' }
        } else if (self == 'Zimbabwe') {
            Table3A14Data { volume: 0, biomass: 56, source: '' }
        } else if (self == 'Afghanistan') {
            Table3A14Data { volume: 0, biomass: 27, source: '' }
        } else if (self == 'Armenia') {
            Table3A14Data { volume: 0, biomass: 66, source: '' }
        } else if (self == 'Azerbaijan') {
            Table3A14Data { volume: 0, biomass: 105, source: '' }
        } else if (self == 'Bahrain') {
            Table3A14Data { volume: 0, biomass: 14, source: '' }
        } else if (self == 'Bangladesh') {
            Table3A14Data { volume: 0, biomass: 39, source: '' }
        } else if (self == 'Bhutan') {
            Table3A14Data { volume: 0, biomass: 178, source: '' }
        } else if (self == 'Brunei Darussalam') {
            Table3A14Data { volume: 0, biomass: 205, source: '' }
        } else if (self == 'Cambodia') {
            Table3A14Data { volume: 0, biomass: 69, source: '' }
        } else if (self == 'China') {
            Table3A14Data { volume: 0, biomass: 61, source: '' }
        } else if (self == 'Cyprus') {
            Table3A14Data { volume: 0, biomass: 21, source: '' }
        } else if (self == 'Dem People\'s Rep. of Korea') {
            Table3A14Data { volume: 0, biomass: 25, source: '' }
        } else if (self == 'East Timor') {
            Table3A14Data { volume: 0, biomass: 136, source: '' }
        } else if (self == 'Georgia') {
            Table3A14Data { volume: 0, biomass: 97, source: '' }
        } else if (self == 'India') {
            Table3A14Data { volume: 0, biomass: 73, source: '' }
        } else if (self == 'Indonesia') {
            Table3A14Data { volume: 0, biomass: 136, source: '' }
        } else if (self == 'Iran, Islamic Rep.') {
            Table3A14Data { volume: 0, biomass: 149, source: '' }
        } else if (self == 'Iraq') {
            Table3A14Data { volume: 0, biomass: 28, source: '' }
        } else if (self == 'Israel') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Japan') {
            Table3A14Data { volume: 0, biomass: 88, source: '' }
        } else if (self == 'Jordan') {
            Table3A14Data { volume: 0, biomass: 37, source: '' }
        } else if (self == 'Kazakhstan') {
            Table3A14Data { volume: 0, biomass: 18, source: '' }
        } else if (self == 'Kuwait') {
            Table3A14Data { volume: 0, biomass: 21, source: '' }
        } else if (self == 'Kyrgyzstan') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Lao People\'s Dem. Rep') {
            Table3A14Data { volume: 0, biomass: 31, source: '' }
        } else if (self == 'Lebanon') {
            Table3A14Data { volume: 0, biomass: 22, source: '' }
        } else if (self == 'Malaysia') {
            Table3A14Data { volume: 0, biomass: 205, source: '' }
        } else if (self == 'Maldives') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Mongolia') {
            Table3A14Data { volume: 0, biomass: 80, source: '' }
        } else if (self == 'Myanmar') {
            Table3A14Data { volume: 0, biomass: 57, source: '' }
        } else if (self == 'Nepal') {
            Table3A14Data { volume: 0, biomass: 109, source: '' }
        } else if (self == 'Oman') {
            Table3A14Data { volume: 0, biomass: 17, source: '' }
        } else if (self == 'Pakistan') {
            Table3A14Data { volume: 0, biomass: 27, source: '' }
        } else if (self == 'Philippines') {
            Table3A14Data { volume: 0, biomass: 114, source: '' }
        } else if (self == 'Qatar') {
            Table3A14Data { volume: 0, biomass: 12, source: '' }
        } else if (self == 'Republic of Korea') {
            Table3A14Data { volume: 0, biomass: 36, source: '' }
        } else if (self == 'Saudi Arabia') {
            Table3A14Data { volume: 0, biomass: 12, source: '' }
        } else if (self == 'Singapore') {
            Table3A14Data { volume: 0, biomass: 205, source: '' }
        } else if (self == 'Sri Lanka') {
            Table3A14Data { volume: 0, biomass: 59, source: '' }
        } else if (self == 'Syrian Arab Rep.') {
            Table3A14Data { volume: 0, biomass: 28, source: '' }
        } else if (self == 'Tajikistan') {
            Table3A14Data { volume: 0, biomass: 10, source: '' }
        } else if (self == 'Thailand') {
            Table3A14Data { volume: 0, biomass: 29, source: '' }
        } else if (self == 'Turkey') {
            Table3A14Data { volume: 0, biomass: 74, source: '' }
        } else if (self == 'Turkmenistan') {
            Table3A14Data { volume: 0, biomass: 3, source: '' }
        } else if (self == 'United Arab Emirates') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Uzbekistan') {
            Table3A14Data { volume: 0, biomass: 6, source: '' }
        } else if (self == 'Viet Nam') {
            Table3A14Data { volume: 0, biomass: 66, source: '' }
        } else if (self == 'West Bank') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Yemen') {
            Table3A14Data { volume: 0, biomass: 19, source: '' }
        } else if (self == 'American Samoa') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Australia') {
            Table3A14Data { volume: 0, biomass: 57, source: '' }
        } else if (self == 'Cook Islands') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Fiji') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'French Polynesia') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Guam') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Kiribati') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Marshall Islands') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Micronesia') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Nauru') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'New Caledonia') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'New Zealand') {
            Table3A14Data { volume: 0, biomass: 217, source: '' }
        } else if (self == 'Niue') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Northern Mariana Isl.') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Palau') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Papua New Guinea') {
            Table3A14Data { volume: 0, biomass: 58, source: '' }
        } else if (self == 'Samoa') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Solomon Islands') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Tonga') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Vanuatu') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Albania') {
            Table3A14Data { volume: 0, biomass: 58, source: '' }
        } else if (self == 'Andorra') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Austria') {
            Table3A14Data { volume: 0, biomass: 250, source: '' }
        } else if (self == 'Belarus') {
            Table3A14Data { volume: 0, biomass: 80, source: '' }
        } else if (self == 'Belgium & Luxembourg') {
            Table3A14Data { volume: 0, biomass: 101, source: '' }
        } else if (self == 'Bosnia & Herzegovina') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Bulgaria') {
            Table3A14Data { volume: 0, biomass: 76, source: '' }
        } else if (self == 'Croatia') {
            Table3A14Data { volume: 0, biomass: 107, source: '' }
        } else if (self == 'Czech Republic') {
            Table3A14Data { volume: 0, biomass: 125, source: '' }
        } else if (self == 'Denmark') {
            Table3A14Data { volume: 0, biomass: 58, source: '' }
        } else if (self == 'Estonia') {
            Table3A14Data { volume: 0, biomass: 85, source: '' }
        } else if (self == 'Finland') {
            Table3A14Data { volume: 0, biomass: 50, source: '' }
        } else if (self == 'France') {
            Table3A14Data { volume: 0, biomass: 92, source: '' }
        } else if (self == 'Germany') {
            Table3A14Data { volume: 0, biomass: 134, source: '' }
        } else if (self == 'Greece') {
            Table3A14Data { volume: 0, biomass: 25, source: '' }
        } else if (self == 'Hungary') {
            Table3A14Data { volume: 0, biomass: 112, source: '' }
        } else if (self == 'Iceland') {
            Table3A14Data { volume: 0, biomass: 17, source: '' }
        } else if (self == 'Ireland') {
            Table3A14Data { volume: 0, biomass: 25, source: '' }
        } else if (self == 'Italy') {
            Table3A14Data { volume: 0, biomass: 74, source: '' }
        } else if (self == 'Latvia') {
            Table3A14Data { volume: 0, biomass: 93, source: '' }
        } else if (self == 'Liechtenstein') {
            Table3A14Data { volume: 0, biomass: 119, source: '' }
        } else if (self == 'Lithuania') {
            Table3A14Data { volume: 0, biomass: 99, source: '' }
        } else if (self == 'Malta') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Netherlands') {
            Table3A14Data { volume: 0, biomass: 107, source: '' }
        } else if (self == 'Norway') {
            Table3A14Data { volume: 0, biomass: 49, source: '' }
        } else if (self == 'Poland') {
            Table3A14Data { volume: 0, biomass: 94, source: '' }
        } else if (self == 'Portugal') {
            Table3A14Data { volume: 0, biomass: 33, source: '' }
        } else if (self == 'Republic of Moldova') {
            Table3A14Data { volume: 0, biomass: 64, source: '' }
        } else if (self == 'Romania') {
            Table3A14Data { volume: 0, biomass: 124, source: '' }
        } else if (self == 'Russian Federation') {
            Table3A14Data { volume: 0, biomass: 56, source: '' }
        } else if (self == 'San Marino') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Slovakia') {
            Table3A14Data { volume: 0, biomass: 142, source: '' }
        } else if (self == 'Slovenia') {
            Table3A14Data { volume: 0, biomass: 178, source: '' }
        } else if (self == 'Spain') {
            Table3A14Data { volume: 0, biomass: 24, source: '' }
        } else if (self == 'Sweden') {
            Table3A14Data { volume: 0, biomass: 63, source: '' }
        } else if (self == 'Switzerland') {
            Table3A14Data { volume: 0, biomass: 165, source: '' }
        } else if (self == 'The FYR of Macedonia') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Ukraine') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'United Kingdom') {
            Table3A14Data { volume: 0, biomass: 76, source: '' }
        } else if (self == 'Yugoslavia') {
            Table3A14Data { volume: 0, biomass: 23, source: '' }
        } else if (self == 'Antigua and Barbuda') {
            Table3A14Data { volume: 0, biomass: 210, source: '' }
        } else if (self == 'Bahamas') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Barbados') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Belize') {
            Table3A14Data { volume: 0, biomass: 211, source: '' }
        } else if (self == 'Bermuda') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'British Virgin Islands') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Canada') {
            Table3A14Data { volume: 0, biomass: 83, source: '' }
        } else if (self == 'Cayman Islands') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Costa Rica') {
            Table3A14Data { volume: 0, biomass: 220, source: '' }
        } else if (self == 'Cuba') {
            Table3A14Data { volume: 0, biomass: 114, source: '' }
        } else if (self == 'Dominica') {
            Table3A14Data { volume: 0, biomass: 166, source: '' }
        } else if (self == 'Dominican Republic') {
            Table3A14Data { volume: 0, biomass: 53, source: '' }
        } else if (self == 'El Salvador') {
            Table3A14Data { volume: 0, biomass: 202, source: '' }
        } else if (self == 'Greenland') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Grenada') {
            Table3A14Data { volume: 0, biomass: 150, source: '' }
        } else if (self == 'Guadeloupe') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Guatemala') {
            Table3A14Data { volume: 0, biomass: 371, source: '' }
        } else if (self == 'Haiti') {
            Table3A14Data { volume: 0, biomass: 101, source: '' }
        } else if (self == 'Honduras') {
            Table3A14Data { volume: 0, biomass: 105, source: '' }
        } else if (self == 'Jamaica') {
            Table3A14Data { volume: 0, biomass: 171, source: '' }
        } else if (self == 'Martinique') {
            Table3A14Data { volume: 0, biomass: 5, source: '' }
        } else if (self == 'Mexico') {
            Table3A14Data { volume: 0, biomass: 54, source: '' }
        } else if (self == 'Montserrat') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Netherlands Antilles') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Nicaragua') {
            Table3A14Data { volume: 0, biomass: 161, source: '' }
        } else if (self == 'Panama') {
            Table3A14Data { volume: 0, biomass: 322, source: '' }
        } else if (self == 'Puerto Rico') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Saint Kitts and Nevis') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Saint Lucia') {
            Table3A14Data { volume: 0, biomass: 198, source: '' }
        } else if (self == 'Saint Pierre & Miquelon') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Saint Vincent and Grenadines') {
            Table3A14Data { volume: 0, biomass: 173, source: '' }
        } else if (self == 'Trinidad and Tobago') {
            Table3A14Data { volume: 0, biomass: 129, source: '' }
        } else if (self == 'United States') {
            Table3A14Data { volume: 0, biomass: 108, source: '' }
        } else if (self == 'US Virgin Islands') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Argentina') {
            Table3A14Data { volume: 0, biomass: 68, source: '' }
        } else if (self == 'Bolivia') {
            Table3A14Data { volume: 0, biomass: 183, source: '' }
        } else if (self == 'Brazil') {
            Table3A14Data { volume: 0, biomass: 209, source: '' }
        } else if (self == 'Chile') {
            Table3A14Data { volume: 0, biomass: 268, source: '' }
        } else if (self == 'Colombia') {
            Table3A14Data { volume: 0, biomass: 196, source: '' }
        } else if (self == 'Ecuador') {
            Table3A14Data { volume: 0, biomass: 151, source: '' }
        } else if (self == 'Falkland Islands') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'French Guiana') {
            Table3A14Data { volume: 0, biomass: 253, source: '' }
        } else if (self == 'Guyana') {
            Table3A14Data { volume: 0, biomass: 253, source: '' }
        } else if (self == 'Paraguay') {
            Table3A14Data { volume: 0, biomass: 59, source: '' }
        } else if (self == 'Peru') {
            Table3A14Data { volume: 0, biomass: 245, source: '' }
        } else if (self == 'Suriname') {
            Table3A14Data { volume: 0, biomass: 253, source: '' }
        } else if (self == 'Uruguay') {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        } else if (self == 'Venezuela') {
            Table3A14Data { volume: 0, biomass: 23, source: '' }
        } else {
            Table3A14Data { volume: 0, biomass: 0, source: '' }
        }
    }
}
