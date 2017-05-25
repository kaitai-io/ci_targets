<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class OpaqueExternalType02Child extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\OpaqueExternalType02Child $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_s1 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(124, false, true, true), "UTF-8");
        $this->_m_s2 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(124, false, false, true), "UTF-8");
        $this->_m_s3 = new \Kaitai\Struct\Tests\OpaqueExternalType02Child\OpaqueExternalType02ChildChild($this->_io, $this, $this->_root);
    }
    protected $_m_someMethod;
    public function someMethod() {
        if ($this->_m_someMethod !== null)
            return $this->_m_someMethod;
        $this->_m_someMethod = true;
        return $this->_m_someMethod;
    }
    protected $_m_s1;
    protected $_m_s2;
    protected $_m_s3;
    public function s1() { return $this->_m_s1; }
    public function s2() { return $this->_m_s2; }
    public function s3() { return $this->_m_s3; }
}

namespace Kaitai\Struct\Tests\OpaqueExternalType02Child;

class OpaqueExternalType02ChildChild extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\OpaqueExternalType02Child $parent = null, \Kaitai\Struct\Tests\OpaqueExternalType02Child $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        if ($this->_root()->someMethod()) {
            $this->_m_s3 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(64, true, true, true), "UTF-8");
        }
    }
    protected $_m_s3;
    public function s3() { return $this->_m_s3; }
}
