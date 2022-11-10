
**Supply Chain Authentication for Vaccine Passport Using Blockchain**

Submitted in partial fulfillment of the requirements for the degree of

**B.E. Information Technology**

By

**Ashna Kabsuri 		191053**

**Arpan Dhamelia 	191031**

**Arya Doshi 		191036**

**Gideon Harpanhalli 	191048**

Supervisor

**Dr.Nitika Rai**

Associate Professor

![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.001.jpeg)

**Department of Information Technology St. Francis Institute of Technology (Engineering College)**

**University of Mumbai 2022-2023**

**CERTIFICATE**

This is to certify that the project entitled **Supply Chain Authentication for Vaccine Passport Using Blockchain** is a bonafide work of **Ashna Kabsuri (191053), Arpan Dhamelia (191031), Arya Doshi (191036), Gideon Harpanhalli (191048)** submitted to the University of Mumbai in partial fulfillment of the requirement for the award of the degree of Bachelor of Engineering in Information Technology.






**Dr. Nitika Rai   (Project Guide)**




**Dr. Prachi Raut	Dr. Sincy George**

**(Head Of Department)	(Principal)**
` `PAGE  \\* roman iii
![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.002.png)

**Literature Review Report for B.E.**

This project report entitled ***Supply Chain Authentication for Vaccine Passport Using Blockchain*** by **Ashna Kabsuri (191053), Arpan Dhamelia (191031), Arya Doshi (191036) & Gideon Harpanhalli (191048)** is approved for the degree of ***Bachelors of Engineering in Information Technology***.


\1. ——————————–



\2. ——————————–





#### **Date:**

#### **Place:**

![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.003.png)

**Declaration**
###
### I declare that this written submission represents my ideas in my own words and where others’ ideas or words have been included, I have adequately cited and ref- erenced the original sources. I also declare that I have adhered to all principles of academic honesty and integrity and have not misrepresented or fabricated or falsi- fied any idea/data/fact/source in my submission. I understand that any violation of the above will be cause for disciplinary action by the Institute and can also evoke penal action from the sources which have thus not been properly cited or from whom proper permission has not been taken when needed.


Ashna Kabsuri (191053)


Arpan Dhamelia (191031)



Arya Doshi (191036)



Gideon Harpanahalli (191048)

#### **Date:** 09-11-2022


**ABSTRACT**

In today's society, immunization is a crucial method for preventing infectious diseases, and the safety of vaccines is strongly linked to both public health and national security. The supply chains for vaccines continue to be plagued by problems including vaccine expiry and immunization record fraud. Therefore, the need for an efficient management system to oversee vaccination supply chains is important. After the Internet, blockchain is the next generation of fundamental technology. It is made to create trust mechanisms that can alter the way information is currently managed. Meanwhile, new techniques to examine the data in information management systems are made possible by the advent of machine learning technology. The major goal of this project is to create a "vaccine blockchain" system using machine learning and blockchain technology. Aiming to solve the issues of vaccine expiration and vaccine record fraud, this blockchain-based system for vaccines is built to support vaccine traceability and smart contract functionality. Additionally, the adoption of machine learning models can give practitioners and receivers of immunizations useful recommendations that will help them select better immunization strategies and vaccines.



**Contents**

1. **Introduction	1**
   1. [Introduction to domain of project	1](#_heading=h.30j0zll)
   1. [Major Challenges in said domain	1](#_heading=h.1fob9te)
   1. [Motivation	](#_heading=h.3znysh7)2
   1. [Problem Statement	](#_heading=h.2et92p0)2
1. **Literature Review	3**
   1. [Existing Work	3](#_heading=h.tyjcwt)
      1. [Literature review related to ](#_heading=h.3dy6vkm)[existing](#_heading=h.3dy6vkm)[ system/methodology	3](#_heading=h.3dy6vkm)
      1. [Literature review related to existing algorithms	4](#_heading=h.1t3h5sf)
      1. [Literature review related to tools/technology/framework	5](#_heading=h.4d34og8)
   1. [Gap identified	](#_heading=h.2s8eyo1)6
1. **Proposed Methodology	7**
   1. [Problem Formulation	](#_heading=h.17dp8vu)7
   1. [Problem Definition	](#_heading=h.3rdcrjn)7
   1. [Scope	](#_heading=h.26in1rg)7
   1. [Proposed Methodology	](#_heading=h.lnxbz9)8
   1. [Proposed Algorithm	](#_heading=h.35nkun2)8
   1. [Features of proposed System	](#_heading=h.1ksv4uv)9
1. **System Analysis	11**
   1. [Functional Requirements	](#_heading=h.44sinio)11
   1. [Non-Functional Requirements	](#_heading=h.2jxsxqh)11
   1. [Specific Requirements	](#_heading=h.z337ya)12
   1. [Use-Case Diagrams	](#_heading=h.3j2qqm3)13
1. **Analysis Modeling	15**
   1. [Data Modeling : ER Diagram	1](#_heading=h.1y810tw)5
   1. [Functional Modeling	1](#_heading=h.2xcytpi)6
      1. [DFD:Level 0	](#_heading=h.1ci93xb)16
      1. [DFD:Level 1	](#_heading=h.3whwml4)17
   1. [TimeLine Chart	1](#_heading=h.2bn6wsx)8
` `PAGE  \\* roman vii
![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.004.png)

**List of Figures**


|**Fig No**|**Figure Name**|**Page No**|
| :-: | :-: | :-: |
|3.6.1|Role distribution of Actors|9|
|3.6.2|High level System Description|10|
|4.4.1|Use Case Diagram for Supply chain on blockchain|13|
|5.1.1|Entity Relationship  Diagram|15|
|5.2.1|DFD: Level 0|16|
|5.2.2|DFD: Level 1|17|
|5.4.1|Timeline chart|18|




**List of Tables**


|**Table No.**|**Table Name**|**Page No**|
| :-: | :-: | :-: |
|1.3.1|Motivation|2|
|2.1.1|Comparison of methodology|3|
|2.1.2|Comparison of algorithms|4|
|2.1.3|Comparison of tools/technology/framework|5|

` `PAGE 2
![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.005.png)



` `PAGE 3
19![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.006.png)
Chapter 1									            Introduction

**Chapter 1**

Introduction

**1.1 Introduction to domain of project**

`    `In West Bengal and Maharashtra states, around three thousand people have been vaccinated by the fake vaccines (distilled water, saline, glucose, and some antibiotic agents, e.g. Amikacin Sulfate) . The fraudsters have generally pasted the labels of AstraZeneca or Covaxin on the vials of an antibiotic injection used for curing bacterial infections. [1]

` `Many fake organizers can accomplish the fake vaccination within a private vaccination camp and inoculate the people by taking ample money, between ₹1000 and ₹2000 per dose from the beneficiaries.

Hence, The solution to the counterfeit vaccination/certificate can be easily solved with incorporation of blockchain step verification throughout the supply chain, which in turn will solve all authorization issues and enables easy authentication of vaccination passports while traveling internationally.

Hence, The solution to the counterfeit vaccination/certificate can be easily solved with incorporation of blockchain step verification throughout the supply chain, which in turn will solve all authorization issues and enables easy authentication of vaccination passports while traveling internationally.

**1.2 Major Challenges in said domain**

`    `The issues of the current vaccine distribution process can be broadly categorized into four categories: i) physical limitations—such as lack of manufacturers and manufacturing capacity, low supply of raw materials, lack of nurses and facilities ii) communication issues—such as inaccurate vaccine distribution planning, lack of communication between stakeholders iii) security concerns—such as cyberattacks, misinformation of the public and counterfeit vaccines and records iv) efficiency difficulties—such as mishandling, lack of digitization and lack of a unified database.

`    `Blockchain technology may help address some of these issues, specifically communication, security, and inefficiency challenges. The blockchain is a distributed ledger technology that has been shown to overcome security and communication problems in a variety of industries. A blockchain solution for the vaccine supply chain could enhance user trust in the vaccine and encourage them to get vaccinated. It could also decrease vaccine management and distribution costs for the manufacturers, distributors, and providers.

The goal here is to identify the key communication and security challenges facing vaccine distributors and providers, determine how blockchain could alleviate these challenges, and finally design and present a blockchain solution for vaccine distribution.

**1.3 Motivation**

`    `The proposed technology will not be limited to just vaccination supply chain verification, but can be adapted to be used for all supply chains in order to verify authenticity of product.

**Table 1.3.1:** Motivation

|**No.**|**Problems**|**Affected Actors**|**Proposed Solutions**|
| :- | :- | :- | :- |
|1|Vaccine passports can be falsified|- Border Agent|- Cryptographically verify using on-chain data|
|2|Key facilities may not meet quality standards|- All|<p>- Publish inspection results to blockchain</p><p>- Verify presented inspection results</p>|
|3|Vaccine passports may not be recognized by destination countries|<p>- Distributor</p><p>- Traveler</p><p>- Immunizer</p>|- Verify signatures in presented certificates|


**1.4 Problem Statement**

`    `To design and deploy a system that uses supply chain verification based on blockchain technology to verify a known issue of trust in the vaccination supply chain.


Chapter 2									     Literature Review


**Chapter 2**

Literature review

**2.1 Existing Work**

**2.1.1 Literature review related to existing system/methodology**

Table 2.1.1:** Comparison of methodology

|**Sr No**|**Title**|**Review**|**Analysis**|
| :-: | :-: | :-: | :-: |
|[1]|Y. Kamenivskyy, A. Palisetti, L. Hamze and S. Saberi, "A Blockchain-Based Solution for COVID-19 Vaccine Distribution," in IEEE Engineering Management Review, vol. 50, no. 1, pp. 43-53, 1 Firstquarter,march 2022, doi: 10.1109/EMR.2022.3145656.|<p>Challenges faced by vaccine supply chain and possible solutions</p><p></p>|<p>- The vaccine distribution chain faced multiple challenges associated with the lack of production capacity, security issues, and miscommunication between different actors. </p><p>- The proposed framework helps minimize the circulation of counterfeit vaccines and vaccination records. </p><p>- It increases supply chain security, and simplifies vaccine inventorying and handling processes.</p><p></p>|
|[2]|C. Antal, T. Cioara, M. Antal and I. Anghel, "Blockchain Platform For COVID-19 Vaccine Supply Management," in IEEE Open Journal of the Computer Society, vol. 2, pp. 164-178, 2021, doi: 10.1109/OJCS.2021.3067450.|<p>Benefits of blockchain in supply chain industry</p><p></p>|<p>- In this paper, we discuss how blockchain technology can help in vaccination schemes. Smart contracts are defined to monitor and track the proper vaccine distribution conditions. </p><p>- For vaccine administration, a transparent and tamper-proof solution for side effects self-reporting is provided. A prototype was implemented using the Ethereum test network, Ropsten.</p>|

**2.1.2 Literature review related to existing algorithms**

Table 2.1.2: Comparison of algorithms

|**Sr No**|**Title**|**Review**|**Analysis**|
| :-: | :-: | :-: | :-: |
|[3]|L. Cui, Z. Xiao, F. Chen, H. Dai and J. Li, "Protecting Vaccine Safety: An Improved, Blockchain-Based, Storage-Efficient Scheme," in IEEE Transactions on Cybernetics, doi: 10.1109/TCYB.2022.3163743.|<p>To understand the implementation of blockchain on supply chain using data certificates and signatures</p><p></p>|<p>- In recent years, vaccine safety incidents have occurred frequently. </p><p>- To protect vaccine safety, researchers have proposed to use blockchain. </p><p>- The proposed system leverages the cloud to implement the vaccine circulation model. </p><p>- Correspondingly, it uses the blockchain to store circulating data certificates and signatures. It evaluated the proposed conceptual model using a consortium blockchain.</p>|
|[4]|P. Idayakumar, S. Mahadik, I. Paul and S. Chaure, "Vaccine Supply Management using Blockchain," 2022 International Conference on Computing, Communication, Security and Intelligent Systems (IC3SIS), 2022, pp. 1-8, doi: 10.1109/IC3SIS54991.2022.9885471.|Blockchain-based vaccine supply management for COVID 19|<p>- In late 2019, we witnessed the apparition of the COVID-19 virus. </p><p>- The paper proposes a blockchain-based vaccination supply chain system to manage the registration, storage and distribution of the vaccines. </p><p>- Smart contracts deployed will help in monitoring and tracking the proper vaccine distribution conditions against the rules and regulations given by the authorities.</p>|



**2.1.3 Literature review related to tools/technology/framework**

Table 2.1.3: Comparison of tools/technology/framework

|**Sr No**|**Title**|**Review**|**Analysis**|
| :-: | :-: | :-: | :-: |
|[5]|I. A. Omar, R. Jayaraman, K. Salah, M. Debe and M. Omar, "Enhancing Vendor Managed Inventory Supply Chain Operations Using Blockchain Smart Contracts," in IEEE Access, vol. 8, pp. 182704-182719, 2020, doi: 10.1109/ACCESS.2020.3028031.|To understand use of smart contracts|<p>- Vendor Managed Inventory (VMI) is a mutually beneficial arrangement between supplier and buyer. </p><p>- VMI operations face critical challenges related to data integrity, transparency, traceability, and single point of failure due to its centralized architecture. </p><p>- Adopting a blockchain-based solution is economically viable and provides a trusted mode of communication among various stakeholders.</p>|
|[6]|Baxter Hines, "Key Features of a Security Token," in Digital Finance: Security Tokens and Unlocking the Real Potential of Blockchain , Wiley, 2021, pp.71-77.|Key Blockchain Security Token Characteristics|<p>- Security tokens are creating excitement in the financial industry. These tokens combine the best of the latest technology and potential for world-class investor protections, regulatory compliance, and customer service. </p><p>- There are many stages and activities critical in the administration of a security. </p><p>- To ensure the safety, soundness, and risk mitigation, tokens should be designed to handle all aspects of administration in an automated fashion.</p>|



**2.2 Gap identified**

`    `Supply chains on blockchain are developed to be useful till the last mile of the chain, the retailers. Immunizers and patients do not enjoy the benefits of blockchain after application of vaccines. Blockchain’s property of being decentralized is not used for safe and private authentication of vaccine certificates or vaccine passports. Customer satisfaction is one of the most crucial aspects of any industry, and in the case of vaccinations, it can be measured by the successful administration of real vaccines and the authentication of certificates without jeopardizing consumers' privacy while still adhering to stringent regulatory requirements.

Establishing accurate provenance and combating fraud and counterfeiting are two issues with current supply chain traceability systems that are either challenging to address or unsolvable with present technologies. Both centralized and distributed architectures are used by existing traceability systems [4] .

Centralized architectures are managed by an authoritative third party body with the risk of (i) single node attack, (ii) data tampering, and (iii) information disclosure. Distributed architecture, such as an EPCIS based setup, allows for scalability due to the ease of creation and sharing of visibility event data on digital and physical objects, both within and across enterprises. Nevertheless, data tampering and information disclosure issues remain unsolved in EPCIS-based systems [4]. The majority of current solutions still rely on heavily centralized cloud infrastructure, which results in lack of transparency and by nature faces security threats, including availability, auditability, data lock-in, and confidentiality [6]. Blockchain is a promising technology for addressing these issues which brings three major benefits: (i) secure traceability and control, (ii) data immutability and (iii) trust creation, in relatively low cost IT solutions.


Chapter 3								         Proposed Methodology


**Chapter 3**

Proposed Methodology

**3.1 Problem Formulation**

`    `It can be difficult to manage the integrity of products and procedures in a multi-stakeholder supply chain. Data fragmentation, a lack of verifiable provenance, and varying protocol rules across various distributions and processes plague many of the present solutions. Blockchain has become a standout among other solutions because it offers secure traceability and control, immutability, and the development of stakeholder confidence in a low-cost IT solution.

**3.2 Problem Definition**

- To build a supply chain system based on blockchain technology
- To cryptographically verify vaccine passport using on-chain data
- To publish inspection results to blockchain
- To verify presented inspection results
- To verify signatures present in vaccine certificate based on requirement of destination country 

**3.3 Scope**

`  `The proposed system does not possess any monetary transaction system inside the established supply chain on blockchain. Any payment interactions between the system agents therefore the exchange of the inventory item is confirmed just by sharing of the inventory token from the blockchain from one system actor to another. The proposed supply chain solution does not consider the absolute supply chain (raw material chain) but starts after the product has been manufactured. The highest hierarchy of actors end at manufacturers and the system does not include raw material tokenization into the blockchain**.** The proposed system does not have any IoT based tracking mechanism of the inventory batch, but makes use of a QR system for batch verification action blockchain. The proposed system access is limited by internet availability. It is inaccessible in locations without access to the internet, as accessing the developed ethereum based supply chain would require internet access. 

**3.4 Proposed Methodology**

`    `The introduction of blockchain architecture aims to address the most urgent problems in the supply chain for vaccines. Through preparatory research and stakeholder interviews, we first pinpoint the main obstacles in the vaccine delivery chain. Then, using an example of how blockchain could address these issues, we assess the framework's viability with a blockchain specialist. Finally, we will demonstrate how this model will be integrated into the supply chain for vaccines as well as the finalized blockchain system, its levels, and its components.

**3.5 Proposed Algorithm**

`    `The hash function is used in blockchain technology to create the hash for a certain block, which acts as a distinctive fingerprint for identifying the block. The chain is formed by each block storing the hash value of the preceding block. It should be observed that the genesis block, the first block, does not, of course, point to any earlier hash. The block's data and the nonce value are used as the inputs for the hash function. What miners actually do when they mine blockchains like Bitcoin and Ethereum is the process of creating the block's hash. Ethereum utilizes the Keccak hash function while Bitcoins use the SHA-256 hash function from the SHA-2 family.



**3.6 Features of proposed System**


![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.007.png)

Figure 3.6.1: Role distribution of Actors

`    `The issuer, the prover, and the verifier are the three primary actors in the supply chain for vaccination passports. The supply chain's issuer is the inspector and immunizer. The Immunizer issues the certificate, and the Inspector creates the inventory token that travels through the supply chain. A request for token generation is issued to the supply chain in the next step. The prover now plays the next step in the supply chain: The supply chain is proved by the vaccine maker, the person who creates the vaccines, the traveler who transports the vaccine from the manufacturer to the final destination, and the storage facility. At every stage of the supply chain, a validator checks to see if the token generated is authentic or not. The Distributor, storage facility and the Border agent all fall under the verifier.

![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.008.png)

Figure 3.6.2: High level System Description

`    `The supply chain authentication is a 3-tiered architecture.The whole supply chain has three actors: Issuer, Prover and Verifier. All three are connected to the node.js server which is the middle end of the chain.
Chapter 4									       System Analysis



**Chapter 4**

System Analysis

**4.1 Functional Requirements**

- The system allows actors in the supply chain to have login credentials  for interacting with the supply chain on blockchain.
- The issuer is required to start the process of supply chain by token generation on blockchain.

**4.2 Non-Functional Requirements**

- Accessibility: The application is accessible through a web interface.
- Usability: The website should be user-friendly.
- Maintenance: The application interface should be modular so as it can be easily edited in future.
- Data Integrity: The token generation, proving and verification must happen inside the blockchain to ensure data integrity.
- Responsive: The system should be able to perform fundamental functions i.e verification, proving, generation within user specified requirement.
- Security: The system should be able to incorporate security properties of blockchain throughout the supply chain.
- Privacy: The system should take advantage of the decentral nature of blockchain to ensure privacy throughout the supply chain.



**4.3 Specific Requirements**

Hardware: (Any computer capable of running windows 10 or higher)

- CPU : 64 Bit Intel or AMD Processor .
- GPU : Any graphics card capable of DX9 or above.
- RAM : 8GB or above.
- Memory : Installation size for project files.
- Operating System : Windows 10 or above.
- Internet connectivity

Software:

- Solidity
- NodeJs
- Ganache Framework
- Truffle Tool



**4.4 Use-Case Diagrams**

![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.009.png)

Figure 4.4.1: Use Case Diagram for Supply chain on blockchain

`   `The figure 4.1.1 shows a use case diagram of the supply chain system, it consists of five major actors i.e issuer, verifier, prover and two secondary actors database server and blockchain. The issuer, verifier and prover actor all are associated with the login use case which is handled by the database server. The blockchain actor is associated with every on chain activity which includes issuing certificates, verification of certificates and requests for verification of certificates. 

|Use Case|Login|
| - | - |
|Primary Actor|Issuer, Verifier, Prover|
|Goal in Context|To gain access to the system through a login portal|
|Precondition|Must be registered user|
|Trigger|Cannot login|
|Exceptions|Invalid credentials|


|Use Case|Issue Certificate|
| - | - |
|Primary Actor|Issuer|
|Goal in Context|To generate and publish certificate token on blockchain|
|Precondition|Must be registered issuer|
|Trigger|Cannot issue certificate|
|Exceptions|Certificate already exists|


|Use Case|Verify certificate|
| - | - |
|Primary Actor|Verifier|
|Goal in Context|To check validity of the certificate provided by a prover|
|Precondition|Must be registered verifier|
|Trigger|Cannot verify|
|Exceptions|Invalid certificate token|


|Use Case|Request verification|
| - | - |
|Primary Actor|Prover|
|Goal in Context|To get a certificate token validated through a verifier actor|
|Precondition|Must be registered provider with an issued certificate in possession|
|Trigger|Cannot prove authenticity|
|Exceptions|Invalid certificate token|

Chapter 5									   Analysis Modeling



**Chapter 5**

Analysis Modeling

**5.1 ER Diagram**

![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.010.png)

Figure 5.1.1 Entity Relationship Diagram

`    `The figure 5.1.1 depicts an Entity relationship diagram, it consists of three major objects i.e certificate, vaccine batch and entity object. The certificate object consists of the information related to the inventory batch, its primary key is ID attribute, this certificate object has a 1:1 relationship with vaccine batch object, through the ‘issued to’ string, which specifies the person who the certificate is issued to. The vaccine batch entity has ID as primary key. It consists of the manufacturer name and brand name of the vaccine batch. The last object is called ‘Entity’ object. This object is the representation of all the system actors in the supply chain. Their primary key is the ID attribute. It consists of username, their role in the supply chain, password, name. It depicts a 1:1 relationship with the certificate object through the ‘Issue’ action.

**5.2 Functional Modeling**

DFD:Level 0

![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.011.png)

Figure 5.2.1: DFD: Level 0

`    `The figure 5.2.1 describes a data flow diagram of level 0, By requesting a token generation on the blockchain, the issuer creates tokens to be given to the vaccine maker. The Prover can use the inventory token from the blockchain to accept the certificate that has been supplied to him. As a result, the prover presents the verifier with proof of his certification. By looking up the inventory token on the blockchain, the verifier validates the certificate's authenticity.



DFD:Level 1

![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.012.png)

Figure 5.2.2: DFD: Level 1

`    `The figure 5.2.1 describes a data flow diagram of level 1, as first the inspector issues a token on the blockchain, to the manufacturer. The batch status is thereafter initiated to "Manufactured." The distributor then gives the token to the storage facility and the regional distributor after the manufacturer. The batch status is changed during this procedure to "Delivering International" and "Delivering Local," respectively. The batch status is subsequently updated to "Delivered" after the local distributor gives the token to the Immunizer. The Traveler receives an immunization from the Immunizer, and the status is updated to "Vaccinated." The traveler then hands the vaccination certificate over to the border agent for inspection. The border agent analyzes the certificate against the blockchain and decides whether to accept it or not.



**5.4 Timeline Chart**

![](Aspose.Words.6f072eea-fca9-457b-a1f4-3db56fe0c2e3.013.png)

Figure 5.4.1: Timeline Chart

`    `The figure 5.4.1 shows a Timeline Chart which consists of 4 activities and the start and finish date of each activity. Each activity's completion Bar Graph is displayed on the right side.





**Literature Cited**

[1] Y. Kamenivskyy, A. Palisetti, L. Hamze and S. Saberi, "A Blockchain-Based Solution for COVID-19 Vaccine Distribution," in IEEE Engineering Management Review, vol. 50, no. 1, pp. 43-53, 1 Firstquarter,march 2022, doi: 10.1109/EMR.2022.3145656.

[2] C. Antal, T. Cioara, M. Antal and I. Anghel, "Blockchain Platform For COVID-19 Vaccine Supply Management," in IEEE Open Journal of the Computer Society, vol. 2, pp. 164-178, 2021, doi: 10.1109/OJCS.2021.3067450.

[3] L. Cui, Z. Xiao, F. Chen, H. Dai and J. Li, "Protecting Vaccine Safety: An Improved, Blockchain-Based, Storage-Efficient Scheme," in IEEE Transactions on Cybernetics, doi: 10.1109/TCYB.2022.3163743.

[4] P. Idayakumar, S. Mahadik, I. Paul and S. Chaure, "Vaccine Supply Management using Blockchain," 2022 International Conference on Computing, Communication, Security and Intelligent Systems (IC3SIS), 2022, pp. 1-8, doi: 10.1109/IC3SIS54991.2022.9885471.

[5] I. A. Omar, R. Jayaraman, K. Salah, M. Debe and M. Omar, "Enhancing Vendor Managed Inventory Supply Chain Operations Using Blockchain Smart Contracts," in IEEE Access, vol. 8, pp. 182704-182719, 2020, doi: 10.1109/ACCESS.2020.3028031.

[6] Baxter Hines, "Key Features of a Security Token," in Digital Finance: Security Tokens and Unlocking the Real Potential of Blockchain , Wiley, 2021, pp.71-77.

