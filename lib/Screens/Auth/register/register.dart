import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:country_flags/country_flags.dart';
import 'package:flutter/widgets.dart';

import '../../../Styles/colours.dart';
import 'opt_verification.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String? selectedValue = 'Nigeria (+234)'; // Default to Nigeria

  // List of countries and their dialing codes
  List<Map<String, String>> items = [
    {'name': 'Afghanistan', 'code': '(+93)', 'flag': 'AF'},
    {'name': 'Albania', 'code': '(+355)', 'flag': 'AL'},
    {'name': 'Algeria', 'code': '(+213)', 'flag': 'DZ'},
    {'name': 'Andorra', 'code': '(+376)', 'flag': 'AD'},
    {'name': 'Angola', 'code': '(+244)', 'flag': 'AO'},
    {'name': 'Antigua and Barbuda', 'code': '(+1-268)', 'flag': 'AG'},
    {'name': 'Argentina', 'code': '(+54)', 'flag': 'AR'},
    {'name': 'Armenia', 'code': '(+374)', 'flag': 'AM'},
    {'name': 'Australia', 'code': '(+61)', 'flag': 'AU'},
    {'name': 'Austria', 'code': '(+43)', 'flag': 'AT'},
    {'name': 'Azerbaijan', 'code': '(+994)', 'flag': 'AZ'},
    {'name': 'Bahamas', 'code': '(+1-242)', 'flag': 'BS'},
    {'name': 'Bahrain', 'code': '(+973)', 'flag': 'BH'},
    {'name': 'Bangladesh', 'code': '(+880)', 'flag': 'BD'},
    {'name': 'Barbados', 'code': '(+1-246)', 'flag': 'BB'},
    {'name': 'Belarus', 'code': '(+375)', 'flag': 'BY'},
    {'name': 'Belgium', 'code': '(+32)', 'flag': 'BE'},
    {'name': 'Belize', 'code': '(+501)', 'flag': 'BZ'},
    {'name': 'Benin', 'code': '(+229)', 'flag': 'BJ'},
    {'name': 'Bhutan', 'code': '(+975)', 'flag': 'BT'},
    {'name': 'Bolivia', 'code': '(+591)', 'flag': 'BO'},
    {'name': 'Bosnia and Herzegovina', 'code': '(+387)', 'flag': 'BA'},
    {'name': 'Botswana', 'code': '(+267)', 'flag': 'BW'},
    {'name': 'Brazil', 'code': '(+55)', 'flag': 'BR'},
    {'name': 'Brunei', 'code': '(+673)', 'flag': 'BN'},
    {'name': 'Bulgaria', 'code': '(+359)', 'flag': 'BG'},
    {'name': 'Burkina Faso', 'code': '(+226)', 'flag': 'BF'},
    {'name': 'Burundi', 'code': '(+257)', 'flag': 'BI'},
    {'name': 'Cabo Verde', 'code': '(+238)', 'flag': 'CV'},
    {'name': 'Cambodia', 'code': '(+855)', 'flag': 'KH'},
    {'name': 'Cameroon', 'code': '(+237)', 'flag': 'CM'},
    {'name': 'Canada', 'code': '(+1)', 'flag': 'CA'},
    {'name': 'Central African Republic', 'code': '(+236)', 'flag': 'CF'},
    {'name': 'Chad', 'code': '(+235)', 'flag': 'TD'},
    {'name': 'Chile', 'code': '(+56)', 'flag': 'CL'},
    {'name': 'China', 'code': '(+86)', 'flag': 'CN'},
    {'name': 'Colombia', 'code': '(+57)', 'flag': 'CO'},
    {'name': 'Comoros', 'code': '(+269)', 'flag': 'KM'},
    {
      'name': 'Congo, Democratic Republic of the',
      'code': '(+243)',
      'flag': 'CD'
    },
    {'name': 'Congo, Republic of the', 'code': '(+242)', 'flag': 'CG'},
    {'name': 'Costa Rica', 'code': '(+506)', 'flag': 'CR'},
    {'name': 'Croatia', 'code': '(+385)', 'flag': 'HR'},
    {'name': 'Cuba', 'code': '(+53)', 'flag': 'CU'},
    {'name': 'Cyprus', 'code': '(+357)', 'flag': 'CY'},
    {'name': 'Czech Republic', 'code': '(+420)', 'flag': 'CZ'},
    {'name': 'Denmark', 'code': '(+45)', 'flag': 'DK'},
    {'name': 'Djibouti', 'code': '(+253)', 'flag': 'DJ'},
    {'name': 'Dominica', 'code': '(+1-767)', 'flag': 'DM'},
    {'name': 'Dominican Republic', 'code': '(+1-809)', 'flag': 'DO'},
    {'name': 'Ecuador', 'code': '(+593)', 'flag': 'EC'},
    {'name': 'Egypt', 'code': '(+20)', 'flag': 'EG'},
    {'name': 'El Salvador', 'code': '(+503)', 'flag': 'SV'},
    {'name': 'Equatorial Guinea', 'code': '(+240)', 'flag': 'GQ'},
    {'name': 'Eritrea', 'code': '(+291)', 'flag': 'ER'},
    {'name': 'Estonia', 'code': '(+372)', 'flag': 'EE'},
    {'name': 'Eswatini', 'code': '(+268)', 'flag': 'SZ'},
    {'name': 'Ethiopia', 'code': '(+251)', 'flag': 'ET'},
    {'name': 'Fiji', 'code': '(+679)', 'flag': 'FJ'},
    {'name': 'Finland', 'code': '(+358)', 'flag': 'FI'},
    {'name': 'France', 'code': '(+33)', 'flag': 'FR'},
    {'name': 'Gabon', 'code': '(+241)', 'flag': 'GA'},
    {'name': 'Gambia', 'code': '(+220)', 'flag': 'GM'},
    {'name': 'Georgia', 'code': '(+995)', 'flag': 'GE'},
    {'name': 'Germany', 'code': '(+49)', 'flag': 'DE'},
    {'name': 'Ghana', 'code': '(+233)', 'flag': 'GH'},
    {'name': 'Greece', 'code': '(+30)', 'flag': 'GR'},
    {'name': 'Grenada', 'code': '(+1-473)', 'flag': 'GD'},
    {'name': 'Guatemala', 'code': '(+502)', 'flag': 'GT'},
    {'name': 'Guinea', 'code': '(+224)', 'flag': 'GN'},
    {'name': 'Guinea-Bissau', 'code': '(+245)', 'flag': 'GW'},
    {'name': 'Guyana', 'code': '(+592)', 'flag': 'GY'},
    {'name': 'Haiti', 'code': '(+509)', 'flag': 'HT'},
    {'name': 'Honduras', 'code': '(+504)', 'flag': 'HN'},
    {'name': 'Hungary', 'code': '(+36)', 'flag': 'HU'},
    {'name': 'Iceland', 'code': '(+354)', 'flag': 'IS'},
    {'name': 'India', 'code': '(+91)', 'flag': 'IN'},
    {'name': 'Indonesia', 'code': '(+62)', 'flag': 'ID'},
    {'name': 'Iran', 'code': '(+98)', 'flag': 'IR'},
    {'name': 'Iraq', 'code': '(+964)', 'flag': 'IQ'},
    {'name': 'Ireland', 'code': '(+353)', 'flag': 'IE'},
    {'name': 'Israel', 'code': '(+972)', 'flag': 'IL'},
    {'name': 'Italy', 'code': '(+39)', 'flag': 'IT'},
    {'name': 'Jamaica', 'code': '(+1-876)', 'flag': 'JM'},
    {'name': 'Japan', 'code': '(+81)', 'flag': 'JP'},
    {'name': 'Jordan', 'code': '(+962)', 'flag': 'JO'},
    {'name': 'Kazakhstan', 'code': '(+7)', 'flag': 'KZ'},
    {'name': 'Kenya', 'code': '(+254)', 'flag': 'KE'},
    {'name': 'Kiribati', 'code': '(+686)', 'flag': 'KI'},
    {'name': 'Korea, North', 'code': '(+850)', 'flag': 'KP'},
    {'name': 'Korea, South', 'code': '(+82)', 'flag': 'KR'},
    {'name': 'Kuwait', 'code': '(+965)', 'flag': 'KW'},
    {'name': 'Kyrgyzstan', 'code': '(+996)', 'flag': 'KG'},
    {'name': 'Laos', 'code': '(+856)', 'flag': 'LA'},
    {'name': 'Latvia', 'code': '(+371)', 'flag': 'LV'},
    {'name': 'Lebanon', 'code': '(+961)', 'flag': 'LB'},
    {'name': 'Lesotho', 'code': '(+266)', 'flag': 'LS'},
    {'name': 'Liberia', 'code': '(+231)', 'flag': 'LR'},
    {'name': 'Libya', 'code': '(+218)', 'flag': 'LY'},
    {'name': 'Liechtenstein', 'code': '(+423)', 'flag': 'LI'},
    {'name': 'Lithuania', 'code': '(+370)', 'flag': 'LT'},
    {'name': 'Luxembourg', 'code': '(+352)', 'flag': 'LU'},
    {'name': 'Madagascar', 'code': '(+261)', 'flag': 'MG'},
    {'name': 'Malawi', 'code': '(+265)', 'flag': 'MW'},
    {'name': 'Malaysia', 'code': '(+60)', 'flag': 'MY'},
    {'name': 'Maldives', 'code': '(+960)', 'flag': 'MV'},
    {'name': 'Mali', 'code': '(+223)', 'flag': 'ML'},
    {'name': 'Malta', 'code': '(+356)', 'flag': 'MT'},
    {'name': 'Marshall Islands', 'code': '(+692)', 'flag': 'MH'},
    {'name': 'Mauritania', 'code': '(+222)', 'flag': 'MR'},
    {'name': 'Mauritius', 'code': '(+230)', 'flag': 'MU'},
    {'name': 'Mexico', 'code': '(+52)', 'flag': 'MX'},
    {'name': 'Micronesia', 'code': '(+691)', 'flag': 'FM'},
    {'name': 'Moldova', 'code': '(+373)', 'flag': 'MD'},
    {'name': 'Monaco', 'code': '(+377)', 'flag': 'MC'},
    {'name': 'Mongolia', 'code': '(+976)', 'flag': 'MN'},
    {'name': 'Montenegro', 'code': '(+382)', 'flag': 'ME'},
    {'name': 'Morocco', 'code': '(+212)', 'flag': 'MA'},
    {'name': 'Mozambique', 'code': '(+258)', 'flag': 'MZ'},
    {'name': 'Myanmar', 'code': '(+95)', 'flag': 'MM'},
    {'name': 'Namibia', 'code': '(+264)', 'flag': 'NA'},
    {'name': 'Nauru', 'code': '(+674)', 'flag': 'NR'},
    {'name': 'Nepal', 'code': '(+977)', 'flag': 'NP'},
    {'name': 'Netherlands', 'code': '(+31)', 'flag': 'NL'},
    {'name': 'New Zealand', 'code': '(+64)', 'flag': 'NZ'},
    {'name': 'Nicaragua', 'code': '(+505)', 'flag': 'NI'},
    {'name': 'Niger', 'code': '(+227)', 'flag': 'NE'},
    {'name': 'Nigeria', 'code': '(+234)', 'flag': 'NG'},
    {'name': 'North Macedonia', 'code': '(+389)', 'flag': 'MK'},
    {'name': 'Norway', 'code': '(+47)', 'flag': 'NO'},
    {'name': 'Oman', 'code': '(+968)', 'flag': 'OM'},
    {'name': 'Pakistan', 'code': '(+92)', 'flag': 'PK'},
    {'name': 'Palau', 'code': '(+680)', 'flag': 'PW'},
    {'name': 'Palestine', 'code': '(+970)', 'flag': 'PS'},
    {'name': 'Panama', 'code': '(+507)', 'flag': 'PA'},
    {'name': 'Papua New Guinea', 'code': '(+675)', 'flag': 'PG'},
    {'name': 'Paraguay', 'code': '(+595)', 'flag': 'PY'},
    {'name': 'Peru', 'code': '(+51)', 'flag': 'PE'},
    {'name': 'Philippines', 'code': '(+63)', 'flag': 'PH'},
    {'name': 'Poland', 'code': '(+48)', 'flag': 'PL'},
    {'name': 'Portugal', 'code': '(+351)', 'flag': 'PT'},
    {'name': 'Qatar', 'code': '(+974)', 'flag': 'QA'},
    {'name': 'Romania', 'code': '(+40)', 'flag': 'RO'},
    {'name': 'Russia', 'code': '(+7)', 'flag': 'RU'},
    {'name': 'Rwanda', 'code': '(+250)', 'flag': 'RW'},
    {'name': 'Saint Kitts and Nevis', 'code': '(+1-869)', 'flag': 'KN'},
    {'name': 'Saint Lucia', 'code': '(+1-758)', 'flag': 'LC'},
    {
      'name': 'Saint Vincent and the Grenadines',
      'code': '(+1-784)',
      'flag': 'VC'
    },
    {'name': 'Samoa', 'code': '(+685)', 'flag': 'WS'},
    {'name': 'San Marino', 'code': '(+378)', 'flag': 'SM'},
    {'name': 'Sao Tome and Principe', 'code': '(+239)', 'flag': 'ST'},
    {'name': 'Saudi Arabia', 'code': '(+966)', 'flag': 'SA'},
    {'name': 'Senegal', 'code': '(+221)', 'flag': 'SN'},
    {'name': 'Serbia', 'code': '(+381)', 'flag': 'RS'},
    {'name': 'Seychelles', 'code': '(+248)', 'flag': 'SC'},
    {'name': 'Sierra Leone', 'code': '(+232)', 'flag': 'SL'},
    {'name': 'Singapore', 'code': '(+65)', 'flag': 'SG'},
    {'name': 'Slovakia', 'code': '(+421)', 'flag': 'SK'},
    {'name': 'Slovenia', 'code': '(+386)', 'flag': 'SI'},
    {'name': 'Solomon Islands', 'code': '(+677)', 'flag': 'SB'},
    {'name': 'Somalia', 'code': '(+252)', 'flag': 'SO'},
    {'name': 'South Africa', 'code': '(+27)', 'flag': 'ZA'},
    {'name': 'South Sudan', 'code': '(+211)', 'flag': 'SS'},
    {'name': 'Spain', 'code': '(+34)', 'flag': 'ES'},
    {'name': 'Sri Lanka', 'code': '(+94)', 'flag': 'LK'},
    {'name': 'Sudan', 'code': '(+249)', 'flag': 'SD'},
    {'name': 'Suriname', 'code': '(+597)', 'flag': 'SR'},
    {'name': 'Sweden', 'code': '(+46)', 'flag': 'SE'},
    {'name': 'Switzerland', 'code': '(+41)', 'flag': 'CH'},
    {'name': 'Syria', 'code': '(+963)', 'flag': 'SY'},
    {'name': 'Taiwan', 'code': '(+886)', 'flag': 'TW'},
    {'name': 'Tajikistan', 'code': '(+992)', 'flag': 'TJ'},
    {'name': 'Tanzania', 'code': '(+255)', 'flag': 'TZ'},
    {'name': 'Thailand', 'code': '(+66)', 'flag': 'TH'},
    {'name': 'Timor-Leste', 'code': '(+670)', 'flag': 'TL'},
    {'name': 'Togo', 'code': '(+228)', 'flag': 'TG'},
    {'name': 'Tonga', 'code': '(+676)', 'flag': 'TO'},
    {'name': 'Trinidad and Tobago', 'code': '(+1-868)', 'flag': 'TT'},
    {'name': 'Tunisia', 'code': '(+216)', 'flag': 'TN'},
    {'name': 'Turkey', 'code': '(+90)', 'flag': 'TR'},
    {'name': 'Turkmenistan', 'code': '(+993)', 'flag': 'TM'},
    {'name': 'Tuvalu', 'code': '(+688)', 'flag': 'TV'},
    {'name': 'Uganda', 'code': '(+256)', 'flag': 'UG'},
    {'name': 'Ukraine', 'code': '(+380)', 'flag': 'UA'},
    {'name': 'United Arab Emirates', 'code': '(+971)', 'flag': 'AE'},
    {'name': 'United Kingdom', 'code': '(+44)', 'flag': 'GB'},
    {'name': 'United States', 'code': '(+1)', 'flag': 'US'},
    {'name': 'Uruguay', 'code': '(+598)', 'flag': 'UY'},
    {'name': 'Uzbekistan', 'code': '(+998)', 'flag': 'UZ'},
    {'name': 'Vanuatu', 'code': '(+678)', 'flag': 'VU'},
    {'name': 'Vatican City', 'code': '(+379)', 'flag': 'VA'},
    {'name': 'Venezuela', 'code': '(+58)', 'flag': 'VE'},
    {'name': 'Vietnam', 'code': '(+84)', 'flag': 'VN'},
    {'name': 'Yemen', 'code': '(+967)', 'flag': 'YE'},
    {'name': 'Zambia', 'code': '(+260)', 'flag': 'ZM'},
    {'name': 'Zimbabwe', 'code': '(+263)', 'flag': 'ZW'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      'Verify your phone number with code',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'We’ll send you a code. It helps keep your account secure',
                      style: TextStyle(color: Color(0xFF878787)),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Your Phone Number',
                        style: TextStyle(color: black, fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.25,
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFFE7EAEB),
                              width: 2.0,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedValue,
                              icon: const Visibility(
                                visible: false,
                                child: Icon(Icons.arrow_downward),
                              ),
                              hint: const Text('Select one country'),
                              isExpanded: true,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 16),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedValue = newValue;
                                });
                              },
                              items:
                                  items.map<DropdownMenuItem<String>>((item) {
                                return DropdownMenuItem<String>(
                                  value: '${item['name']} ${item['code']}',
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CountryFlags.flag(item['flag']!,
                                          width: 30),
                                      SizedBox(width: 5),
                                      Flexible(
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Text(
                                            '${item['code']}',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.55,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xFF1DA1FA),
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xFFE7EAEB),
                                    ))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ), // Default text style
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Sign in',
                              style: TextStyle(
                                color: Color(
                                    0xFF1DA1FA), // Color for the "Sign in" text
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // Handle "Sign in" tap
                                  print('Sign in tapped');
                                },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Color(0xFF1DA1FA)),
                      onPressed: () {
                        // OtpVerification

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OtpVerification()));
                      },
                      child: Text(
                        'Send Code',
                        style: TextStyle(color: Colors.white),
                      )))

              // Display the selected country
            ],
          ),
        ),
      ),
    );
  }
}
