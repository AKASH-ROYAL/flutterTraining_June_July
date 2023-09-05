import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class University_Of_Staff extends StatefulWidget {
  const University_Of_Staff({super.key});

  @override
  State<University_Of_Staff> createState() => _University_Of_StaffState();
}

List Staff_List = [
  {
    "name": "Arun Kumar",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Professor",
        "department": "Computer Science",
      },
    ],
  },
  {
    "name": "Priya Sharma",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Electrical Engineering",
      },
    ],
  },
  {
    "name": "Rajesh Singh",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Lecturer",
        "department": "Mechanical Engineering",
      },
    ],
  },
  {
    "name": "Anjali Patel",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Associate Professor",
        "department": "Chemical Engineering",
      },
    ],
  },
  {
    "name": "Sandeep Verma",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Research Scientist",
        "department": "Biotechnology",
      },
    ],
  },
  {
    "name": "Neha Gupta",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Dean",
        "department": "Physics",
      },
    ],
  },
  {
    "name": "Rahul Jain",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Assistant Lecturer",
        "department": "Civil Engineering",
      },
    ],
  },
  {
    "name": "Smita Choudhury",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Professor",
        "department": "Mathematics",
      },
    ],
  },
  {
    "name": "Amit Dubey",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Chemistry",
      },
    ],
  },
  {
    "name": "Meera Singhania",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Researcher",
        "department": "Materials Science",
      },
    ],
  },
  {
    "name": "Sanjay Gupta",
    "university": "Delhi University",
    "branches": [
      {
        "role": "Associate Professor",
        "department": "Economics",
      },
    ],
  },
  {
    "name": "Kavita Sharma",
    "university": "Jawaharlal Nehru University",
    "branches": [
      {
        "role": "Professor",
        "department": "Sociology",
      },
    ],
  },
  {
    "name": "Rajiv Verma",
    "university": "Banaras Hindu University",
    "branches": [
      {
        "role": "Dean",
        "department": "Chemistry",
      },
    ],
  },
  {
    "name": "Nisha Singh",
    "university": "University of Mumbai",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Environmental Science",
      },
    ],
  },
  {
    "name": "Amit Kumar",
    "university": "Indian Statistical Institute Kolkata",
    "branches": [
      {
        "role": "Research Scientist",
        "department": "Statistics",
      },
    ],
  },
  {
    "name": "Preeti Sharma",
    "university": "Indian Institute of Science Bangalore",
    "branches": [
      {
        "role": "Assistant Lecturer",
        "department": "Physics",
      },
    ],
  },
  {
    "name": "Vijay Patel",
    "university": "Tata Institute of Fundamental Research Mumbai",
    "branches": [
      {
        "role": "Lecturer",
        "department": "Astronomy",
      },
    ],
  },
  {
    "name": "Rahul Gupta",
    "university": "Indian Institute of Technology Delhi",
    "branches": [
      {
        "role": "Associate Professor",
        "department": "Mechanical Engineering",
      },
    ],
  },
  {
    "name": "Pooja Sharma",
    "university": "Indian Institute of Science Education and Research Pune",
    "branches": [
      {
        "role": "Researcher",
        "department": "Chemistry",
      },
    ],
  },
  {
    "name": "Deepak Verma",
    "university": "Indian Institute of Technology Madras",
    "branches": [
      {
        "role": "Professor",
        "department": "Biotechnology",
      },
    ],
  },
  {
    "name": "Neha Dubey",
    "university": "Indian Institute of Technology Guwahati",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Environmental Science",
      },
    ],
  },
  {
    "name": "Vivek Patel",
    "university": "Indian Institute of Science Education and Research Bhopal",
    "branches": [
      {
        "role": "Associate Professor",
        "department": "Chemistry",
      },
    ],
  },
  {
    "name": "Amita Sharma",
    "university": "Indian Institute of Technology Roorkee",
    "branches": [
      {
        "role": "Dean",
        "department": "Civil Engineering",
      },
    ],
  },
  {
    "name": "Rahul Verma",
    "university": "Indian Institute of Technology Kanpur",
    "branches": [
      {
        "role": "Assistant Lecturer",
        "department": "Materials Science",
      },
    ],
  },
  {
    "name": "Smita Kumar",
    "university": "Indian Institute of Technology Kharagpur",
    "branches": [
      {
        "role": "Professor",
        "department": "Mechanical Engineering",
      },
    ],
  },
  {
    "name": "Rajesh Khanna",
    "university": "Indian Statistical Institute Chennai",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Statistics",
      },
    ],
  },
  {
    "name": "Nisha Verma",
    "university": "Indian Institute of Technology Bombay",
    "branches": [
      {
        "role": "Research Scientist",
        "department": "Biotechnology",
      },
    ],
  },
  {
    "name": "Anil Sharma",
    "university": "Indian Institute of Technology Kharagpur",
    "branches": [
      {
        "role": "Dean",
        "department": "Physics",
      },
    ],
  },
  {
    "name": "Preeti Dubey",
    "university":
        "Indian Institute of Science Education and Research Thiruvananthapuram",
    "branches": [
      {
        "role": "Assistant Lecturer",
        "department": "Mathematics",
      },
    ],
  },
  {
    "name": "Amita Khanna",
    "university": "Indian Institute of Technology Kanpur",
    "branches": [
      {
        "role": "Associate Professor",
        "department": "Electrical Engineering",
      },
    ],
  },
  {
    "name": "Sanjay Verma",
    "university": "Indian Statistical Institute Delhi",
    "branches": [
      {
        "role": "Professor",
        "department": "Mechanical Engineering",
      },
    ],
  },
  {
    "name": "Kavita Sharma",
    "university": "Jawaharlal Nehru University",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Mathematics",
      },
    ],
  },
  {
    "name": "Vikram Verma",
    "university": "Banaras Hindu University",
    "branches": [
      {
        "role": "Research Scientist",
        "department": "Chemistry",
      },
    ],
  },
  {
    "name": "Manju Khanna",
    "university": "University of Mumbai",
    "branches": [
      {
        "role": "Dean",
        "department": "Physics",
      },
    ],
  },
  {
    "name": "Suresh Khanna",
    "university": "Indian Institute of Technology Bombay",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Environmental Science",
      },
    ],
  },
  {
    "name": "Deepa Sharma",
    "university": "Indian Institute of Science Bangalore",
    "branches": [
      {
        "role": "Researcher",
        "department": "Biotechnology",
      },
    ],
  },
  {
    "name": "Anita Dubey",
    "university": "Tata Institute of Fundamental Research Hyderabad",
    "branches": [
      {
        "role": "Lecturer",
        "department": "Astronomy",
      },
    ],
  },
  {
    "name": "Rahul Khanna",
    "university": "Delhi University",
    "branches": [
      {
        "role": "Professor",
        "department": "Economics",
      },
    ],
  },
  {
    "name": "Pooja Verma",
    "university": "Indian Institute of Technology Guwahati",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Environmental Science",
      },
    ],
  },
  {
    "name": "Arun Khanna",
    "university": "Indian Institute of Science Education and Research Bhopal",
    "branches": [
      {
        "role": "Associate Professor",
        "department": "Chemistry",
      },
    ],
  },
  {
    "name": "Neha Sharma",
    "university": "Indian Institute of Technology Roorkee",
    "branches": [
      {
        "role": "Dean",
        "department": "Civil Engineering",
      },
    ],
  },
  {
    "name": "Rajesh Kumar",
    "university": "Indian Institute of Technology Kanpur",
    "branches": [
      {
        "role": "Assistant Lecturer",
        "department": "Materials Science",
      },
    ],
  },
  {
    "name": "Smita Verma",
    "university": "Indian Institute of Technology Kharagpur",
    "branches": [
      {
        "role": "Professor",
        "department": "Mechanical Engineering",
      },
    ],
  },
  {
    "name": "Rahul Sharma",
    "university": "Indian Statistical Institute Chennai",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Statistics",
      },
    ],
  },
  {
    "name": "Nisha Khanna",
    "university": "Indian Institute of Technology Bombay",
    "branches": [
      {
        "role": "Research Scientist",
        "department": "Biotechnology",
      },
    ],
  },
  {
    "name": "Anil Verma",
    "university": "Indian Institute of Technology Kharagpur",
    "branches": [
      {
        "role": "Dean",
        "department": "Physics",
      },
    ],
  },
  {
    "name": "Preeti Khanna",
    "university":
        "Indian Institute of Science Education and Research Thiruvananthapuram",
    "branches": [
      {
        "role": "Assistant Lecturer",
        "department": "Mathematics",
      },
    ],
  },
  {
    "name": "Amita Verma",
    "university": "Indian Institute of Technology Kanpur",
    "branches": [
      {
        "role": "Associate Professor",
        "department": "Electrical Engineering",
      },
    ],
  },
  {
    "name": "Sanjay Khanna",
    "university": "Indian Statistical Institute Delhi",
    "branches": [
      {
        "role": "Professor",
        "department": "Mechanical Engineering",
      },
    ],
  },
  {
    "name": "Kavita Verma",
    "university": "Jawaharlal Nehru University",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Mathematics",
      },
    ],
  },
  {
    "name": "Vikram Khanna",
    "university": "Banaras Hindu University",
    "branches": [
      {
        "role": "Research Scientist",
        "department": "Chemistry",
      },
    ],
  },
  {
    "name": "Manju Verma",
    "university": "University of Mumbai",
    "branches": [
      {
        "role": "Dean",
        "department": "Physics",
      },
    ],
  },
  {
    "name": "Suresh Verma",
    "university": "Indian Institute of Technology Bombay",
    "branches": [
      {
        "role": "Assistant Professor",
        "department": "Environmental Science",
      },
    ],
  },
  {
    "name": "Deepa Khanna",
    "university": "Indian Institute of Science Bangalore",
    "branches": [
      {
        "role": "Researcher",
        "department": "Biotechnology",
      },
    ],
  },
  {
    "name": "Anita Khanna",
    "university": "Tata Institute of Fundamental Research Hyderabad",
    "branches": [
      {
        "role": "Lecturer",
        "department": "Astronomy",
      },
    ],
  },
  {
    "name": "Rahul Verma",
    "university": "Delhi University",
    "branches": [
      {
        "role": "Professor",
        "department": "Economics",
      },
    ],
  },
];

List IITMadras = [];
List Delhiuniversity = [];
List JawaharlalNeruUniversity = [];
List Banrashinduuniversity = [];
List Universityofmumbai = [];

List ISIkolkatta = [];
List IISBangalore = [];
List IITBangalore = [];
List TIFRMumbai = [];
List IITDelhi = [];
List IISERPune = [];
List IITGwuahati = [];
List IISERBhopal = [];
List IITRoorkee = [];
List IITKanpur = [];
List IITKharagpur = [];
List IISERThiruvananthapuram = [];
List IITBombay = [];
List TIFRHyderabad = [];
List ISIDelhi = [];
List ISIChennai = [];

class _University_Of_StaffState extends State<University_Of_Staff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("University Of Staff Sample"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                child: ElevatedButton(onPressed: () {}, child: Text("Filter")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

roles() {
  print("roleProfessor");
  // print(Staff_List[0]["branches"][0]['role']);
  print(Staff_List.length);
  List roleProfessor = [];
  for (int i = 0; i <= Staff_List.length - 1; i++) {
    if (Staff_List[i]["branches"][0]["department"] == "Computer Science") {
      roleProfessor.add(Staff_List[i]);
    }
  }
  print("${roleProfessor.length}");
  print("$roleProfessor");
}

IIT_Madras() {
  print(Staff_List.length);

  for (int i = 0; i <= Staff_List.length - 1; i++) {
    if (Staff_List[i]["branches"][0]["role"] == "Professor") {
      IITMadras.add(Staff_List[i]);
    }
  }
  print("${IITMadras.length}");
  print("$IITMadras");
}
