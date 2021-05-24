part of 'model.dart';

class Film {
  final int id;
  final String picturePath;
  final String deskripsi;
  final String name;
  final double rate;
  final String photoCreator;
  final String nameCreator;
  final String role;

  Film(
      {this.id, this.picturePath, this.rate, this.name, this.deskripsi: '', this.photoCreator, this.nameCreator, this.role});
}

var mockFilms = [
  Film(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1515634928627-2a4e0dae3ddf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      name: "How to be a Film Director",
      deskripsi:
          'Film directors create motion pictures, television shows, and video productions to entertain and inform a viewing audience. They may direct a short, instructional film for their municipality about jury duty or a big-budget, special-effects filled blockbuster for a nationwide release. Film directors oversee many if not all creative aspects of a film and are often involved in its post-production, including editing and sound design.\n\nThe BLS predicts 9% job growth from 2014 to 2024 for producers and directors. The number of job opportunities for film directors in the motion picture and video industry is expected to increase thanks to the public demand for new movies and television shows. There is also demand overseas for films directed and produced in the U.S. Over time, new technology for video content delivery, including mobile phones and online television, may provide even more career opportunities for film directors across the country.\n\nMore and more schools are offering bachelor’s and master’s in film directing. Most film directors typically hold a bachelor’s in film or a related field and have several years of work experience. They often begin their film directing career as a film editor, actor, or assistant to an established director.\n\nIn order to coordinate the talents of what can be a large number of people working together to create a film, directors must develop strong leadership, management, and communication skills. Film directors also use their creative skills to bring a film script to life. As a film director’s reputation grows, he or she may advance to larger, more expensive projects.',
      rate: 4.2,
      nameCreator: 'Zahra Amanah',
      photoCreator :'https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
  Film(
      id: 2,
      picturePath:
          "https://images.unsplash.com/photo-1603400938371-d030ad03505b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1868&q=80",
      name: "What does a Film Editor do?",
      deskripsi:
          'A video editor edits raw video or film footage for all types of projects such as tv shows, commercials, films, and even internet-based media. An editor will also work very closely with a film or commercial director to ensure the editing matches what the director envisions the final product to look and feel like.\n\nVideo editors relay the director’s vision when editing footage for documentaries, motion pictures, music videos, television programs, sporting events, or news. They must organize the footage and meet with the directors to understand the total concept of the overall vision for the project and inform the director of editing techniques that may improve the overall product.\n\nVideo editors must be proficient in linear editing software. Common software used is in this industry includes Avid Media Composer, Final Cut Pro, Adobe After Effects, and Adobe Premiere Pro. This software is used to edit, select, and splice together content. It also assist in sequencing, music integration, and the syncing of raw footage to create the final product. Most video editors work in office settings or studios. This consists of private spaces and often times video editors sit alone in front of several computer monitors. Larger projects may also have assistants helping them.\n\n',
      rate: 4.5,
      nameCreator: 'Siti Zana',
      photoCreator: 'https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80'),
  Film(
      id: 1,
      picturePath:
          "https://images.unsplash.com/photo-1493863641943-9b68992a8d07?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=739&q=80",
      name: "How to be a Photographer in nutsel",
      deskripsi:
          'Professional photography is an excellent career choice for anyone who wants to get paid for using their creative talents. It\'s one of the few fields where age and college degrees aren\'t as important as a good eye, a quality product, and self-discipline. Photography is a competitive field, so be prepared to start small. Then perfect your craft and build a portfolio of your best work.\n\nDevelop your photography skills. There is no “right way” or "wrong way" to become a better photographer. Some people take a class or get a college art degree with a photography focus. Others believe that college is a waste of time for becoming a photographer. You may find that you can teach yourself about photography from books and experimentation, or you may want to learn from other professionals. Whatever you decide to choose, if you work for it you can achieve it.\n\nPurchase equipment frugally. Having quality equipment is important for taking high-quality photos, but you need not invest all of your savings in brand new, high-end equipment before you really start your career. You can buy used equipment in good working condition, purchase older models at a discount after a new model comes out, rent equipment, or even borrow equipment until you are sure that your business will be successful.',
      rate: 4.7,
      nameCreator: 'Sentot Abdurahman',
      photoCreator: 'https://images.unsplash.com/photo-1545296664-39db56ad95bd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=690&q=80')

];