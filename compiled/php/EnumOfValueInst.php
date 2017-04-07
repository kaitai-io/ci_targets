<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class EnumOfValueInst extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\EnumOfValueInst $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_pet1 = $this->_io->readU4le();
        $this->_m_pet2 = $this->_io->readU4le();
    }
    protected $_m_pet3;
    public function pet3() {
        if ($this->_m_pet3 !== null)
            return $this->_m_pet3;
        $this->_m_pet3 = ($this->pet1() == \Kaitai\Struct\Tests\EnumOfValueInst\Animal::CAT ? 4 : 12);
        return $this->_m_pet3;
    }
    protected $_m_pet4;
    public function pet4() {
        if ($this->_m_pet4 !== null)
            return $this->_m_pet4;
        $this->_m_pet4 = ($this->pet1() == \Kaitai\Struct\Tests\EnumOfValueInst\Animal::CAT ? \Kaitai\Struct\Tests\EnumOfValueInst\Animal::DOG : \Kaitai\Struct\Tests\EnumOfValueInst\Animal::CHICKEN);
        return $this->_m_pet4;
    }
    protected $_m_pet1;
    protected $_m_pet2;
    public function pet1() { return $this->_m_pet1; }
    public function pet2() { return $this->_m_pet2; }
}

namespace Kaitai\Struct\Tests\EnumOfValueInst;

class Animal {
    const DOG = 4;
    const CAT = 7;
    const CHICKEN = 12;
}
