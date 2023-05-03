import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Fara Ayeesha Binti Ahmad Yusni
//286941

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Info',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Country Information'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String desc = "No Data";
  TextEditingController countryInformationController = TextEditingController();
  String flagImageUrl = "";
  String countryCode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Search Country",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 350.0,
              height: 50.0,
              child : TextField(
              controller: countryInformationController,
              decoration: InputDecoration(
                hintText: "Country Full Name or 2 Letter",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            ),
            ElevatedButton(
                onPressed: _getCountryInfo, child: const Text("Get Country Info")),
                if (flagImageUrl != "") ...[
                  Image.network('https://flagsapi.com/$countryCode/flat/64.png'),
                ],
            
            Container(
              width: 320.0,
              height: 150.0,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(
                desc,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            ),
            
            /*Text(desc,
              style:
                const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),*/
          ],
        ),
      ),
    );
  }

  Future<void> _getCountryInfo() async {
    String country = (countryInformationController.text);
    var url = Uri.parse(
        'https://api.api-ninjas.com/v1/country?name=$country');
    var response = await http.get(url, headers: {
      'x-api-key': 'nMl0bkymQA1srihi5JIXPBUIJyEibMCcMkzOpsHo'
    });
    var rescode = response.statusCode;
    if (rescode == 200) {
      var jsonData = response.body;
      var parsedJson = json.decode(jsonData);

          setState(() {
            countryCode = parsedJson[0]['iso2'];
            flagImageUrl = 'https://flagsapi.com/$countryCode/flat/64.png';
          });

      setState(() {
        var gdp = parsedJson[0]['gdp'];
        var sexR = parsedJson[0]['sex_ratio'];
        var sur = parsedJson[0]['surface_area'];
        var expectM = parsedJson[0]['life_expectancy_male'];
        var unemployment = parsedJson[0]['unemployment'];
        var imports = parsedJson[0]['imports'];
        var homicideRate = parsedJson[0]['homicide_rate'];
        var currencyCode = parsedJson[0]['currency']['code'];
        var currencyName = parsedJson[0]['currency']['name'];
        var employmentServices = parsedJson[0]['employment_services'];
        var employmentIndustry = parsedJson[0]['employment_industry'];
        var urbanPopulationGrowth = parsedJson[0]['urban_population_growth'];
        var secondarySchoolEnrollmentFemale = parsedJson[0]['secondary_school_enrollment_female'];
        var employmentAgriculture = parsedJson[0]['employment_agriculture'];
        var capital = parsedJson[0]['capital'];
        var co2Emissions = parsedJson[0]['co2_emissions'];
        var forestedArea = parsedJson[0]['forested_area'];
        var tourists = parsedJson[0]['tourists'];
        var exports = parsedJson[0]['exports'];
        var lifeExpectancyFemale = parsedJson[0]['life_expectancy_female'];
        var postSecondaryEnrollmentFemale = parsedJson[0]['post_secondary_enrollment_female'];
        var postSecondaryEnrollmentMale = parsedJson[0]['post_secondary_enrollment_male'];
        var primarySchoolEnrollmentFemale = parsedJson[0]['primary_school_enrollment_female'];
        var infantMortality = parsedJson[0]['infant_mortality'];
        var gdpGrowth = parsedJson[0]['gdp_growth'];
        var threatenedSpecies = parsedJson[0]['threatened_species'];
        var population = parsedJson[0]['population'];
        var urbanPopulation = parsedJson[0]['urban_population'];
        var secondarySchoolEnrollmentMale = parsedJson[0]['secondary_school_enrollment_male'];
        var name = parsedJson[0]['name'];
        var popGrowth = parsedJson[0]['pop_growth'];
        var region = parsedJson[0]['region'];
        var popDensity = parsedJson[0]['pop_density'];
        var internetUsers = parsedJson[0]['internet_users'];
        var gdpPerCapita = parsedJson[0]['gdp_per_capita'];
        var fertility = parsedJson[0]['fertility'];
        var refugees = parsedJson[0]['refugees'];
        var primarySchoolEnrollmentMale = parsedJson[0]['primary_school_enrollment_male'];
        var iso2 = parsedJson[0]['iso2'];

        desc =
            "Name: $name\nTwo Letter Code: $iso2\nRegion: $region\nCapital: $capital\nSurface area is $sur km^2\nPopulation: $population\nUrban Population: $urbanPopulation\nPopulation density: $popDensity\nPopulation growth: $popGrowth\n"
            "Urban Population Growth: $urbanPopulationGrowth\n"
            "Currency Code: $currencyCode\nCurrency Name: $currencyName\n"
            "\nThe GDP is $gdp.\nThe GDP growth is $gdpGrowth.\nThe GDP per capita is $gdpPerCapita.\nImports: $imports\nExports: $exports\n"
            "\nThe sex ratio is $sexR\nLife expectancy of a male is $expectM\nLife expectancy of a female is $lifeExpectancyFemale\nFertility: $fertility\nInfant mortality is $infantMortality\n"
            "\nUnemployment: $unemployment\nEmployment(Services): $employmentServices\nEmployment(Industry): $employmentIndustry\n"
            "Employment(Agriculture): $employmentAgriculture\n"
            "\nPrimary school enrollment (M) is $primarySchoolEnrollmentMale\nPrimary school enrollment (F) is $primarySchoolEnrollmentFemale"
            "\nSecondary school enrollment (M) is $secondarySchoolEnrollmentMale\nSecondary school enrollment (F) is $secondarySchoolEnrollmentFemale"
            "\nPost secondary enrollment (M) is $postSecondaryEnrollmentMale\nPost secondary enrollment (F) is $postSecondaryEnrollmentFemale"
            "\n\nHomicide Rate: $homicideRate\nCO2 emissions: $co2Emissions\nForested Area: $forestedArea\nTourists: $tourists"
            "\nThreathened Species: $threatenedSpecies\nInternet Users: $internetUsers\nRefugees: $refugees";
      });
    }else {
      setState(() {
        desc = "No record";
      });
    }

  }
}