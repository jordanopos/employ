class Job {
  final String jobName;
  final String paymentRange;
  final String companyUrl;
  final List requirements;
  final String companyName;
  final String hoursWorked;
  final String location;

  Job(
      {this.companyName,
      this.companyUrl,
      this.hoursWorked,
      this.jobName,
      this.location,
      this.paymentRange,
      this.requirements});
}

List<Job> jobs = [
  Job(
      jobName: 'Flutter UI designer',
      companyName: 'Google LLC',
      companyUrl: 'assets/images/google.png',
      location: 'MoutainView , CaliFornia',
      hoursWorked: 'Part Time',
      requirements: [
        'Exceptional Communication Skills and Networking Skills',
        'Know the principles of animation and can crate high fidelity prtotypes',
        'Direcet Experience usingg adobe premiere pro and other tools used to make anmations',
        'Good UI/UX knowledge'
      ],
      paymentRange: '60/hr'),
  Job(
      jobName: 'Flutter UI designer',
      companyName: 'Amazon Inc',
      companyUrl: 'assets/images/amazon.png',
      location: 'MoutainView , CaliFornia',
      hoursWorked: 'Part Time',
      requirements: ['Must Be goos with flutter', 'Must Have an app or two'],
      paymentRange: '60/hr'),
  Job(
      jobName: 'Flutter UI designer',
      companyName: 'Netflix Inc',
      companyUrl: 'assets/images/netflix.png',
      location: 'MoutainView , CaliFornia',
      hoursWorked: 'Part Time',
      requirements: ['Must Be goos with flutter', 'Must Have an app or two'],
      paymentRange: '60/hr'),
  Job(
      jobName: 'Flutter UI designer',
      companyName: 'Instagram',
      companyUrl: 'assets/images/instagram.png',
      location: 'MoutainView , CaliFornia',
      hoursWorked: 'Part Time',
      requirements: ['Must Be goos with flutter', 'Must Have an app or two'],
      paymentRange: '60/hr'),
];
