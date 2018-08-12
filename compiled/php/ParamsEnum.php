<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ParamsEnum extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ParamsEnum $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_one = $this->_io->readU1();
        $this->_m_invokeWithParam = new \Kaitai\Struct\Tests\ParamsEnum\WithParam($this->one(), $this->_io, $this, $this->_root);
    }
    protected $_m_one;
    protected $_m_invokeWithParam;
    public function one() { return $this->_m_one; }
    public function invokeWithParam() { return $this->_m_invokeWithParam; }
}

namespace Kaitai\Struct\Tests\ParamsEnum;

class WithParam extends \Kaitai\Struct\Struct {
    public function __construct(int $enumeratedOne, \Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ParamsEnum $_parent = null, \Kaitai\Struct\Tests\ParamsEnum $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_m_enumeratedOne = $enumeratedOne;
        $this->_read();
    }

    private function _read() {
    }
    protected $_m_isCat;
    public function isCat() {
        if ($this->_m_isCat !== null)
            return $this->_m_isCat;
        $this->_m_isCat = $this->enumeratedOne() == \Kaitai\Struct\Tests\ParamsEnum\Animal::CAT;
        return $this->_m_isCat;
    }
    protected $_m_enumeratedOne;
    public function enumeratedOne() { return $this->_m_enumeratedOne; }
}

namespace Kaitai\Struct\Tests\ParamsEnum;

class Animal {
    const CAT = 1;
    const DOG = 2;
}
