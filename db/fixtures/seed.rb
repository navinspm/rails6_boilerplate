User.seed(:id,
  { id: 1, name: 'Ajith', username: 'admin', mobile: '7092158339', password: "password", role_id: Role.first.id, branch_id: Branch.first.id, email: 'ajithdemo11@yopmail.com', department_id: Department.first.id, aadhar_no: '123456789011', pan_no: '1234567890' }
)