<?php

namespace Tests\Unit;

use AccountTest;
use App\Models\Account;
use PHPUnit\Framework\TestCase;

class Test extends TestCase
{

    public function test_example(){

        $response = $this->get('/');

        $response->assertStatus(200);
    }

    public function test_create_account(){
        $account = new Account();

        $this->assertTrue($account instanceof Account);
    }

    public function test_saldo_cero(){
        $account = new Account();

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,0);
    }

    public function test_ingressar_100_euros(){
        $account = new Account();

        $account->ingressar(10000);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,10000);
    }

    public function test_ingressar_3000_euros(){
        $account = new Account();

        $account->ingressar(300000);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,300000);
    }

    public function test_ingressar_3000_a_100_euros(){
        $account = new Account();

        $account->ingressar(10000);
        $saldo = $account->getSaldo();
        $this->assertEquals($saldo,10000);

        $account->ingressar(300000);
        $saldo = $account->getSaldo();
        $this->assertEquals($saldo,310000);
    }

    public function test_ingressar_negatiu_euros(){
        $account = new Account();

        $account->ingressar(-10000);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,000);
    }

    /*public function test_ingressar_dos_decimals(){
        $account = new Account();

        $account->ingressar(100.45);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,100.45);
    }

    public function test_ingressar_tres_decimals(){
        $account = new Account();

        $account->ingressar(100.457);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,000);
    }*/

    public function test_ingress_maxim(){
        $account = new Account();

        $account->ingressar(Account::$INGRESS_MAXIM+1);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,0);
    }

    public function test_retirar_100_sobre_500(){
        $account = new Account();

        $account->ingressar(50000);
        $account->retirar(10000);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,40000);
    }

    public function test_retirar_500_sobre_200(){
        $account = new Account();

        $account->ingressar(20000);
        $account->retirar(50000);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,20000);
    }

    public function test_retirar_negatiu_sobre_500(){
        $account = new Account();

        $account->ingressar(50000);
        $account->retirar(-10000);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,50000);
    }

    /*public function test_retirar_amb_tres_decimals(){
        $account = new Account();

        $account->ingressar(50000);
        $account->retirar(100.457);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,50000);
    }*/

    public function test_retirada_maxim(){
        $account = new Account();

        $account->ingressar(500000);
        $account->ingressar(500000);
        $account->retirar(Account::$RETIRADA_MAXIM+0001);

        $saldo = $account->getSaldo();

        $this->assertEquals($saldo,1000000);
    }

    public function test_transferencia(){
        $account = new Account();
        $account1 = new Account();

        $account->ingressar(50000);
        $account1->ingressar(5000);

        $account->transferir($account1,100);

        $saldo = $account->getSaldo();
        $saldo1 = $account1->getSaldo();

        $this->assertEquals($saldo,40000);
        $this->assertEquals($saldo1,15000);

    }

    public function test_transferencia_negativa(){
        $account = new Account();
        $account1 = new Account();

        $account->ingressar(50000);
        $account1->ingressar(5000);

        $account->transferir($account1,-100);

        $saldo = $account->getSaldo();
        $saldo1 = $account1->getSaldo();

        $this->assertEquals($saldo,50000);
        $this->assertEquals($saldo1,5000);

    }

    public function test_transferencia_maxim_3000_amb_centim(){
        $account = new Account();
        $account1 = new Account();

        $account->ingressar(500000);

        $account->transferir($account1,Account::$TRANSFERIR_MAXIM+0001);

        $saldo = $account->getSaldo();
        $saldo1 = $account1->getSaldo();

        $this->assertEquals($saldo,500000);
        $this->assertEquals($saldo1,000);

    }

    public function test_transferencia_maxim_3000(){
        $account = new Account();
        $account1 = new Account();

        $account->ingressar(500000);

        $account->transferir($account1,Account::$TRANSFERIR_MAXIM);

        $saldo = $account->getSaldo();
        $saldo1 = $account1->getSaldo();

        $this->assertEquals($saldo,200000);
        $this->assertEquals($saldo1,Account::$TRANSFERIR_MAXIM);

    }



}
