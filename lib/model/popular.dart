part of 'model.dart';

class Popular {
  final int id;
  final String picturePath;
  final String deskripsi;
  final String name;
  final double rate;
  final String photoCreator;

  Popular(
      {this.id, this.picturePath, this.rate, this.name, this.deskripsi: '', this.photoCreator});
}

var mockPopulars = [
  Popular(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1581291519195-ef11498d1cf2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fHV4fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      name: "Introduction to User Experience Design",
      deskripsi:
          'Last time, Jeff introduced you to UX design with the help of some examples of good and bad UX. In this tutorial, I’m going to show you what a UX designer actually does on a day-to-day basis. In other words, what does UX design look like in action? By the end, you’ll have a good understanding of what the UX design process entails.\n\nAs you progress through this tutorial, think about the parallels between your current job and the UX design process—there are bound to be some! As Jeff mentioned, I used to work as a nurse, and there are more similarities between the two fields than you might think. Both require empathy and a highly user-centric approach, for example. So, as you read, think about how your current skillset might be transferred to UX.\n\nWhat does a UX designer actually do? This question comes up time and time again, especially among those considering a career in UX! As a UX designer, what I do can vary dramatically from project to project. However, the UX design process can generally be divided into four key phases: research, design, testing, and implementation.\n\nBased on these phases, UX designers tend to follow a certain sequence for each project: carrying out user research, analyzing their findings, defining user personas, mapping out user flows, creating wireframes and prototypes, conducting user testing, and finally, handing the designs over for visual design and development.\n\nSo there you have it: the UX design process at a glance. There’s just one more thing to do before you go—take the quiz below to test what you’ve learned!',
      rate: 4.2,
      photoCreator :'https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
  Popular(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1520607162513-77705c0f0d4a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YnVzaW5lc3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      name: "How to Start Your Own Business Specialization",
      deskripsi:
          'Starting a business involves planning, making financial decisions, doing market research, and acquiring knowledge in areas you never thought you would learn about before. We created this 14 step guide to starting a business to help you put your best foot forward today.\n\nIt is important to note that there is no one size fits all model to starting a new business, but these steps will help you organize your thoughts, and iron out important details so when you launch your business you have answered all the important startup questions.\n\nRegardless of which option you choose, it\'s vital to understand the reasoning behind your idea. Stephanie Desaulniers, owner of Business by Dezign and former director of operations and women\'s business programs at Covation Center, cautions entrepreneurs against writing a business plan or brainstorming a business name before nailing down the idea\'s value.\n\nThe easiest business to start is one that requires little to no financial investment upfront, nor should it require extensive training to learn the business. One of the easiest types of new business to launch is a dropshipping company. Dropshipping requires no inventory management, saving you the hassle of buying, storing and tracking stock. Instead, another company will fulfill your customer orders at your behest. This company will manage the inventory, package goods, and ship out your business orders. To get started, you can create an online store by selecting curated products from the catalog available through partners.',
      rate: 4.5,
      photoCreator: 'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80'),
  Popular(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1493863641943-9b68992a8d07?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=739&q=80",
      name: "How to be a Photographer in Nutsel",
      deskripsi:
          'Professional photography is an excellent career choice for anyone who wants to get paid for using their creative talents. It\'s one of the few fields where age and college degrees aren\'t as important as a good eye, a quality product, and self-discipline. Photography is a competitive field, so be prepared to start small. Then perfect your craft and build a portfolio of your best work.\n\nDevelop your photography skills. There is no “right way” or "wrong way" to become a better photographer. Some people take a class or get a college art degree with a photography focus. Others believe that college is a waste of time for becoming a photographer. You may find that you can teach yourself about photography from books and experimentation, or you may want to learn from other professionals. Whatever you decide to choose, if you work for it you can achieve it.\n\nPurchase equipment frugally. Having quality equipment is important for taking high-quality photos, but you need not invest all of your savings in brand new, high-end equipment before you really start your career. You can buy used equipment in good working condition, purchase older models at a discount after a new model comes out, rent equipment, or even borrow equipment until you are sure that your business will be successful.',
      rate: 4.7,
      photoCreator: 'https://images.unsplash.com/photo-1545296664-39db56ad95bd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=690&q=80')
];
