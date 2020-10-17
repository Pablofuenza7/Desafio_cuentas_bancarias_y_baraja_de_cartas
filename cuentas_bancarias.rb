class Usuario
    attr_accessor :cuentas
    
       def initialize(cuentas)
           @cuentas = cuentas
       end
   
       def saldo_total
           self.cuentas.map{|c| c.saldo}.sum
       end
   end
   
   class CuentaBancaria
       attr_accessor :saldo
       attr_reader :name, :num_acc
   
       def initialize(name, num_acc, saldo = 0)
           @name = name
           @num_acc = num_acc
           @saldo = saldo
       end
   
       def transferir(monto, cuenta)
           self.saldo -= monto
           cuenta.saldo += monto
       end
   end
   
   c1 = CuentaBancaria.new("cta1", "123456", 5000)
   c2 = CuentaBancaria.new("cta2", "345678", 5000)
   
   puts c1
   puts c2