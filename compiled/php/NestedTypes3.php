<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class NestedTypes3 extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NestedTypes3 $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_aCc = new \Kaitai\Struct\Tests\NestedTypes3\SubtypeA\SubtypeCc($this->_io, $this, $this->_root);
        $this->_m_aCD = new \Kaitai\Struct\Tests\NestedTypes3\SubtypeA\SubtypeC\SubtypeD($this->_io, $this, $this->_root);
        $this->_m_b = new \Kaitai\Struct\Tests\NestedTypes3\SubtypeB($this->_io, $this, $this->_root);
    }
    protected $_m_aCc;
    protected $_m_aCD;
    protected $_m_b;
    public function aCc() { return $this->_m_aCc; }
    public function aCD() { return $this->_m_aCD; }
    public function b() { return $this->_m_b; }
}

namespace Kaitai\Struct\Tests\NestedTypes3;

class SubtypeA extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NestedTypes3 $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
    }
}

namespace Kaitai\Struct\Tests\NestedTypes3\SubtypeA;

class SubtypeC extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NestedTypes3 $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
    }
}

namespace Kaitai\Struct\Tests\NestedTypes3\SubtypeA\SubtypeC;

class SubtypeD extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NestedTypes3 $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_valueD = $this->_io->readS1();
    }
    protected $_m_valueD;
    public function valueD() { return $this->_m_valueD; }
}

namespace Kaitai\Struct\Tests\NestedTypes3\SubtypeA;

class SubtypeCc extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NestedTypes3 $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_valueCc = $this->_io->readS1();
    }
    protected $_m_valueCc;
    public function valueCc() { return $this->_m_valueCc; }
}

namespace Kaitai\Struct\Tests\NestedTypes3;

class SubtypeB extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NestedTypes3 $_parent = null, \Kaitai\Struct\Tests\NestedTypes3 $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_valueB = $this->_io->readS1();
        $this->_m_aCc = new \Kaitai\Struct\Tests\NestedTypes3\SubtypeA\SubtypeCc($this->_io, $this, $this->_root);
        $this->_m_aCD = new \Kaitai\Struct\Tests\NestedTypes3\SubtypeA\SubtypeC\SubtypeD($this->_io, $this, $this->_root);
    }
    protected $_m_valueB;
    protected $_m_aCc;
    protected $_m_aCD;
    public function valueB() { return $this->_m_valueB; }
    public function aCc() { return $this->_m_aCc; }
    public function aCD() { return $this->_m_aCD; }
}
