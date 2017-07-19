<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ExprEnum extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ExprEnum $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_one = $this->_io->readU1();
    }
    protected $_m_constDog;
    public function constDog() {
        if ($this->_m_constDog !== null)
            return $this->_m_constDog;
        $this->_m_constDog = 4;
        return $this->_m_constDog;
    }
    protected $_m_derivedBoom;
    public function derivedBoom() {
        if ($this->_m_derivedBoom !== null)
            return $this->_m_derivedBoom;
        $this->_m_derivedBoom = $this->one();
        return $this->_m_derivedBoom;
    }
    protected $_m_derivedDog;
    public function derivedDog() {
        if ($this->_m_derivedDog !== null)
            return $this->_m_derivedDog;
        $this->_m_derivedDog = ($this->one() - 98);
        return $this->_m_derivedDog;
    }
    protected $_m_one;
    public function one() { return $this->_m_one; }
}

namespace Kaitai\Struct\Tests\ExprEnum;

class Animal {
    const DOG = 4;
    const CAT = 7;
    const CHICKEN = 12;
    const BOOM = 102;
}
