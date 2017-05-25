<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class EnumToI extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\EnumToI $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_pet1 = $this->_io->readU4le();
        $this->_m_pet2 = $this->_io->readU4le();
    }
    protected $_m_pet1I;
    public function pet1I() {
        if ($this->_m_pet1I !== null)
            return $this->_m_pet1I;
        $this->_m_pet1I = $this->pet1();
        return $this->_m_pet1I;
    }
    protected $_m_pet1Mod;
    public function pet1Mod() {
        if ($this->_m_pet1Mod !== null)
            return $this->_m_pet1Mod;
        $this->_m_pet1Mod = ($this->pet1() + 32768);
        return $this->_m_pet1Mod;
    }
    protected $_m_oneLtTwo;
    public function oneLtTwo() {
        if ($this->_m_oneLtTwo !== null)
            return $this->_m_oneLtTwo;
        $this->_m_oneLtTwo = $this->pet1() < $this->pet2();
        return $this->_m_oneLtTwo;
    }
    protected $_m_pet1;
    protected $_m_pet2;
    public function pet1() { return $this->_m_pet1; }
    public function pet2() { return $this->_m_pet2; }
}

namespace Kaitai\Struct\Tests\EnumToI;

class Animal {
    const DOG = 4;
    const CAT = 7;
    const CHICKEN = 12;
}
