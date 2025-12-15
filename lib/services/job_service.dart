import '../models/job_model.dart';
import '../models/application_model.dart';

class JobService {
  // Mock data - replace with actual API calls
  static final List<Job> _mockJobs = [];
  static final List<Application> _mockApplications = [];

  static Future<List<Job>> getJobs({
    String? contractType,
    String? experienceLevel,
    String? location,
    double? minSalary,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    
    var filteredJobs = List<Job>.from(_mockJobs);
    
    if (contractType != null && contractType.isNotEmpty) {
      filteredJobs = filteredJobs.where((j) => j.contractType == contractType).toList();
    }
    if (experienceLevel != null && experienceLevel.isNotEmpty) {
      filteredJobs = filteredJobs.where((j) => j.experienceLevel == experienceLevel).toList();
    }
    if (location != null && location.isNotEmpty) {
      filteredJobs = filteredJobs.where((j) => j.location.toLowerCase().contains(location.toLowerCase())).toList();
    }
    if (minSalary != null) {
      filteredJobs = filteredJobs.where((j) => j.salaryMin != null && j.salaryMin! >= minSalary).toList();
    }
    
    return filteredJobs;
  }

  static Future<Job?> getJobById(String jobId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return _mockJobs.firstWhere((j) => j.id == jobId);
    } catch (e) {
      return null;
    }
  }

  static Future<List<Job>> getCompanyJobs(String companyId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _mockJobs.where((j) => j.companyId == companyId).toList();
  }

  static Future<Job> createJob(Job job) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _mockJobs.add(job);
    return job;
  }

  static Future<Application> applyToJob(String jobId, String employeeId, String employeeName, String? cvUrl) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final application = Application(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      jobId: jobId,
      employeeId: employeeId,
      employeeName: employeeName,
      cvUrl: cvUrl,
      status: 'sent',
      appliedAt: DateTime.now(),
    );
    _mockApplications.add(application);
    return application;
  }

  static Future<List<Application>> getEmployeeApplications(String employeeId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final applications = _mockApplications.where((a) => a.employeeId == employeeId).toList();
    
    // Attach job details to applications
    for (var app in applications) {
      final job = await getJobById(app.jobId);
      if (job != null) {
        final index = applications.indexOf(app);
        applications[index] = Application(
          id: app.id,
          jobId: app.jobId,
          employeeId: app.employeeId,
          employeeName: app.employeeName,
          employeePhoto: app.employeePhoto,
          cvUrl: app.cvUrl,
          status: app.status,
          appliedAt: app.appliedAt,
          job: job,
        );
      }
    }
    
    return applications;
  }

  static Future<List<Application>> getJobApplications(String jobId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _mockApplications.where((a) => a.jobId == jobId).toList();
  }

  static Future<void> updateApplicationStatus(String applicationId, String status) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final index = _mockApplications.indexWhere((a) => a.id == applicationId);
    if (index != -1) {
      final app = _mockApplications[index];
      _mockApplications[index] = Application(
        id: app.id,
        jobId: app.jobId,
        employeeId: app.employeeId,
        employeeName: app.employeeName,
        employeePhoto: app.employeePhoto,
        cvUrl: app.cvUrl,
        status: status,
        appliedAt: app.appliedAt,
        job: app.job,
      );
    }
  }
}

