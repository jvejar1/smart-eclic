# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

rnd=Random.new(Random.new_seed)
rnd.rand(10)
user_emails=["jvejar1@miuandes.cl",
             "boein@comcast.net",
             "arnold@verizon.net",
             "pkplex@msn.com",
             "hermanab@icloud.com",
              "lridener@msn.com",
              "ralamosm@live.com",
              "jdhildeb@msn.com",
              "kannan@optonline.net",
              "elmer@yahoo.com",
              "danzigism@outlook.com",
              "juerd@comcast.net"]
users_list=[]

course=Course.create(semester:201810)

g1=Group.create(number:1,course_id:course.id)
g2=Group.create(number:2,course_id:course.id)
g3=Group.create(number:3,course_id:course.id)

k=0
user_emails.each do |user_email|
  user=User.create(email:user_email)
  course.users<<user
  if([0,1,2].include?k)
    g1.users<<user
  elsif [3,4,5].include?k
    g2.users<<user
  else
    g3.users<<user
  end
  users_list<<user
  k+=1
end


a1=Activity.create(chapter:1,course_id:course.id)

a2=Activity.create(chapter:2,course_id:course.id)



a3=Activity.create(chapter:3,course_id:course.id)

activities=Activity.all

prelab1=Prelab.create(begin:Time.now,end:Time.now()+10,activity_id:a1.id,
                      circuits_attributes:[{name:"MOSFET como switch para un led rojo."},
                                           {name:"Amplificador de voltaje inversor con ganancia = – 1 – mes de nacimiento."},
                                           {name:"Amplificador de voltaje no-inversor = 10 + mes de nacimiento."}],
                      questions_attributes:[{question_type:1,
                                             question_text:"Cual de las siguientes alternativas determina el rango de voltajes de activación de un transistor MOSFET 2N7000 según su hoja de especificaciones:",
                                             question_options_attributes:[{option_text:"0.8V < VGS < 3V"},
                                                                          {option_text:"0.8V < VGS < 20V",correct:true},
                                                                          {option_text:"0.8V > VGS"},
                                                                          {option_text:"VGS > 0"}
                                             ]},

                                            {question_type:1,
                                             question_text:"Cual de las siguientes alternativas determina la máxima corriente continua que puede pasar por el drain sin quemar el MOSFET 2N7000 según su hoja de especificaciones:",
                                             question_options_attributes:[{option_text:"a) 200mA",correct:true},
                                                                          {option_text:" 1A"},
                                                                          {option_text: "75mA"},
                                                                          {option_text:"500mA"}
                                             ]},
                                            {question_type:1,
                                             question_text:"Cual de las siguientes alternativas define correctamente las conexiones de un transistor MOSFET 2N7000 según su hoja de especificaciones:",
                                             question_options_attributes:[{option_text:"1. Gate 2. Source 3. Drain"},
                                                                          {option_text:"1. Source 2. Gate 3. Drain",correct:true},
                                                                          {option_text: "1. Drain 2. Source 3. Gate"},
                                                                          {option_text:"1. Drain 2. Gate 3. Source"}
                                             ]},

                                            {question_type:1,
                                             question_text:"Determine cuales de las siguientes afirmaciones son verdaderas:

I. Los transistores MOSFET deben ser utilizados con una corriente en el gate distinta de cero.
II. Un transistor en su región de saturación actúa como un switch cerrado.
III. La región de saturación de un MOSFET comienza cuando VGS esta por encima de VTH.
IV. Un transistor N MOSFET se activa cuando VGS > VTH.",
                                             question_options_attributes:[{option_text:"I y III"},
                                                                          {option_text:"II y III",correct:true},
                                                                          {option_text: "II, III y IV."},
                                                                          {option_text:"I, II, III y IV"}
                                             ]},
                                            {question_type:2,
                                             question_text:"Considere el circuito de la figura:

Si se desea que VG = 1/4 (VDD) determine los valores de las resistencias R1 ,R2 y RS considerando que:
VD = (VDD – VTH)/2
VTH = 2.5V
RD = 370Ω
K = 45mA/V2 ."},
                                            {question_type:2,
                                             question_text:"Calcule la frecuencia de corte del amplificador de la figura si R1 = 50KΩ, R2 = 30KΩ RD = 500Ω y RS = 300Ω."}
                      ],

                      util_links_attributes:[{link:"https://www.electronics-tutorials.ws/amplifier/mosfet-amplifier.html"},
                                             {link:"https://www.electronics-tutorials.ws/transistor/tran_6.html"},
                                             {link:"https://www.electronics-tutorials.ws/transistor/tran_7.html"}
                      ])

lab1=Lab.create(activity_id:1,begin:Time.now(),end:Time.now())
lab1.assignment.attach(io:File.open(Rails.root.join('db', 'seeds','q5_image.png')),filename:'q5_image.png')


prelab2=Prelab.create(begin:Time.now,end:Time.now()+10,activity_id:2,
                      circuits_attributes:[{name:"MOSFET como switch para un led rojo."},
                                           {name:"Amplificador de voltaje inversor con ganancia = – 1 – mes de nacimiento."},
                                           {name:"Amplificador de voltaje no-inversor = 10 + mes de nacimiento."}],
                      questions_attributes:[{question_type:1,
                                             question_text:"Cual de las siguientes alternativas determina el rango de voltajes de activación de un transistor MOSFET 2N7000 según su hoja de especificaciones:",
                                             question_options_attributes:[{option_text:"0.8V < VGS < 3V"},
                                                                          {option_text:"0.8V < VGS < 20V",correct:true},
                                                                          {option_text:"0.8V > VGS"},
                                                                          {option_text:"VGS > 0"}
                                             ]},

                                            {question_type:1,
                                             question_text:"Cual de las siguientes alternativas determina la máxima corriente continua que puede pasar por el drain sin quemar el MOSFET 2N7000 según su hoja de especificaciones:",
                                             question_options_attributes:[{option_text:"a) 200mA",correct:true},
                                                                          {option_text:" 1A"},
                                                                          {option_text: "75mA"},
                                                                          {option_text:"500mA"}
                                             ]},
                                            {question_type:1,
                                             question_text:"Cual de las siguientes alternativas define correctamente las conexiones de un transistor MOSFET 2N7000 según su hoja de especificaciones:",
                                             question_options_attributes:[{option_text:"1. Gate 2. Source 3. Drain"},
                                                                          {option_text:"1. Source 2. Gate 3. Drain",correct:true},
                                                                          {option_text: "1. Drain 2. Source 3. Gate"},
                                                                          {option_text:"1. Drain 2. Gate 3. Source"}
                                             ]},

                                            {question_type:1,
                                             question_text:"Determine cuales de las siguientes afirmaciones son verdaderas:

I. Los transistores MOSFET deben ser utilizados con una corriente en el gate distinta de cero.
II. Un transistor en su región de saturación actúa como un switch cerrado.
III. La región de saturación de un MOSFET comienza cuando VGS esta por encima de VTH.
IV. Un transistor N MOSFET se activa cuando VGS > VTH.",
                                             question_options_attributes:[{option_text:"I y III"},
                                                                          {option_text:"II y III",correct:true},
                                                                          {option_text: "II, III y IV."},
                                                                          {option_text:"I, II, III y IV"}
                                             ]},
                                            {question_type:2,
                                             question_text:"Considere el circuito de la figura:

Si se desea que VG = 1/4 (VDD) determine los valores de las resistencias R1 ,R2 y RS considerando que:
VD = (VDD – VTH)/2
VTH = 2.5V
RD = 370Ω
K = 45mA/V2 ."},
                                            {question_type:2,
                                             question_text:"Calcule la frecuencia de corte del amplificador de la figura si R1 = 50KΩ, R2 = 30KΩ RD = 500Ω y RS = 300Ω."}
                      ],

                      util_links_attributes:[{link:"https://www.electronics-tutorials.ws/amplifier/mosfet-amplifier.html"},
                                             {link:"https://www.electronics-tutorials.ws/transistor/tran_6.html"},
                                             {link:"https://www.electronics-tutorials.ws/transistor/tran_7.html"}
                      ])

lab2=Lab.create(activity_id:2)
lab2.assignment.attach(io:File.open(Rails.root.join('db', 'seeds','q5_image.png')),filename:'q5_image.png')


all_questions=Question.all
users_list=User.all
users_list.each do |user|


  user_prelab1_record=UserPrelab.create(user_id:user.id,prelab:prelab1)

  rnd=Random.new(Random.new_seed)

  user_lab1_record=UserLab.create(lab_id:lab1.id,user_id:user.id,report_grade:  rnd.rand(1..7),class_grade:  rnd.rand(1..7))
  user_lab1_record.report.attach(io:File.open(Rails.root.join('db', 'seeds','q5_image.png')),filename:'q5_image.png')

  user_prelab2_record=UserPrelab.create(user_id:user.id,prelab:prelab2)
  user_lab2_record=UserLab.create(lab_id:lab2.id,user_id:user.id,report_grade:  rnd.rand(1..7),class_grade:  rnd.rand(1..7))
  rnd=Random.new(Random.new_seed)

  azar=rnd.rand(1..2)
  if azar == 1
    user_lab2_record.report.attach(io:File.open(Rails.root.join('db', 'seeds','q5_image.png')),filename:'q5_image.png')
  else
    puts "ignoring attachment"
    puts user_lab2_record.report.attached?
  end

  all_circuits=[]
  all_circuits<<prelab1.circuits
  all_circuits<<prelab2.circuits

  prelab1.circuits.each do |circuitp1|
    CircuitSimulation.create(user_prelab:user_prelab1_record,circuit_id:circuitp1.id)
  end

  prelab2.circuits.each do |circuitp2|
    CircuitSimulation.create(user_prelab:user_prelab2_record,circuit_id:circuitp2.id)
  end


  prelab1_questions=prelab1.questions
  prelab1_questions.each do |question|

    if(question.is_multiple_selection)
      rnd=Random.new(Random.new_seed)

      azar=rnd.rand(1..2)
      if azar == 1
        next
      end
      options=question.question_options
      selected_option=options.sample(1)[0]
      puts selected_option.id
      question_answer=QuestionOptionSelection.create(question_option_id:selected_option.id,user_prelab_id:user_prelab1_record.id)
    else
      question_answer=QuestionTextAnswer.create(user_prelab_id:user_prelab1_record.id,answer_text:"Respuesta alumno...............",question_id:question.id)
    end
    if(question_answer.errors.any?)
      puts question.question_type.to_s+" "+question_answer.errors.as_json.to_s
    end
  end

  prelab2_questions=prelab2.questions
  prelab2_questions.each do |question|

    if(question.is_multiple_selection)
      rnd=Random.new(Random.new_seed)

      azar=rnd.rand(1..2)
      if azar == 1
        next
      end
      options=question.question_options
      selected_option=options.sample(1)[0]
      question_answer=QuestionOptionSelection.create(question_option_id:selected_option.id,user_prelab_id:user_prelab2_record.id)
    else
      question_answer=QuestionTextAnswer.create(user_prelab_id:user_prelab2_record.id,answer_text:"Respuesta alumno...............",question_id:question.id,grade:  rnd.rand(1..7))
    end
    if(question_answer.errors.any?)
      puts question.question_type.to_s+" "+question_answer.errors.as_json.to_s
    end

  end

end