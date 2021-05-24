part of 'model.dart';

class UX {
  final int id;
  final String picturePath;
  final String name;
  final double rate;
  final String deskripsi;
  final String nameCreator;
  final String photoCreator;
  final String role;

  UX(
      {this.id,
      this.picturePath,
      this.rate,
      this.name,
      this.deskripsi,
      this.nameCreator,
      this.photoCreator,
      this.role});
}

List<UX> mockUXs = [
  UX(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1581291519195-ef11498d1cf2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fHV4fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      name: "Introduction to User Experience Design",
      deskripsi:
          'Last time, Jeff introduced you to UX design with the help of some examples of good and bad UX. In this tutorial, I’m going to show you what a UX designer actually does on a day-to-day basis. In other words, what does UX design look like in action? By the end, you’ll have a good understanding of what the UX design process entails.\n\nAs you progress through this tutorial, think about the parallels between your current job and the UX design process—there are bound to be some! As Jeff mentioned, I used to work as a nurse, and there are more similarities between the two fields than you might think. Both require empathy and a highly user-centric approach, for example. So, as you read, think about how your current skillset might be transferred to UX.\n\nWhat does a UX designer actually do? This question comes up time and time again, especially among those considering a career in UX! As a UX designer, what I do can vary dramatically from project to project. However, the UX design process can generally be divided into four key phases: research, design, testing, and implementation.\n\nBased on these phases, UX designers tend to follow a certain sequence for each project: carrying out user research, analyzing their findings, defining user personas, mapping out user flows, creating wireframes and prototypes, conducting user testing, and finally, handing the designs over for visual design and development.\n\nSo there you have it: the UX design process at a glance. There’s just one more thing to do before you go—take the quiz below to test what you’ve learned!',
      rate: 4.2,
      photoCreator:
          "https://images.unsplash.com/photo-1557555187-23d685287bc3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80",
      nameCreator: 'Levina Siantono'),
  UX(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1529119513315-c7c361862fc7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      name: "The UX Design Process: Everything You Need to Know",
      deskripsi:
          "As a UX designer, I am sure you have been asked many times “What process do you follow when designing apps and websites?” There is a simple reason why this question is so popular among designers: UX process is a cornerstone of UX design. Without a solid UX design process, you have a lower chance of creating a product with good UX. A well-defined and well-executed UX process, on the other hand, makes it possible to craft amazing experiences for users.\n\nThe answer to this question is: it depends. Your process will depend on the type of product you’re designing. Different projects require different approaches; the approach to a corporate website differs from the way we design a dating app, for example. Most designers are familiar with the concept of “design thinking” as a UX process. This process has five stages in it: empathize, define, ideate, prototype, and test. Most design processes originate from this concept.\n\nCommunication is a key UX design skill. While creating great designs is one thing, communicating great design is equally as important. To do this, conduct regular design review sessions and meet with stakeholders to ensure that everyone is aware and on board with the product design decisions.",
      rate: 4.5,
      photoCreator:
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
      nameCreator: "Linda Ayu"),
  UX(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1545235617-9465d2a55698?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80",
      name: "User Experience (UX): Process and Methodology",
      deskripsi:
          'The concept of User Experience (UX) has been around earlier than the abbreviation UX itself. When you conduct user research through methods like survey or interview, it is a process of user-centered design aiming to improve the experience of users for products and services. When you design products to be comfortable for both right-handed and left-handed people, you are trying to create the best user experience for all your users without bias.\n\nIt wasn’t until the 1990’s that the term user experience or UX was made famous by Don Norman. He is the author of best-selling “The Design of Everyday Things”. Through the book, he popularized the terms “user-centered design”. In addition, he emphasized the importance of design as the communication between consumers and products.\n\nGlobal consumers are getting pickier than ever before. Unlike the earlier generations, we have more information symmetry thanks to the world wide web and proliferation of internet economy. E-commerce is growing, rapidly. In the face of intense competitions, even the slightest lift in user experience can help you to stay ahead of competitors. UX is relevant and applicable across all product categories and services, ranging from machinery, electric and electronic appliances, smartphones to a web portal or automated teller machine (ATM).',
      rate: 4.2,
      photoCreator:
          "https://images.unsplash.com/photo-1591258739299-5b65d5cbb235?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
      nameCreator: "Aul")
];
