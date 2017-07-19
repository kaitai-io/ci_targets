<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class StrEncodingsDefault extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\StrEncodingsDefault $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_lenOf1 = $this->_io->readU2le();
        $this->_m_str1 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf1()), "UTF-8");
        $this->_m_rest = new \Kaitai\Struct\Tests\StrEncodingsDefault\Subtype($this->_io, $this, $this->_root);
    }
    protected $_m_lenOf1;
    protected $_m_str1;
    protected $_m_rest;
    public function lenOf1() { return $this->_m_lenOf1; }
    public function str1() { return $this->_m_str1; }
    public function rest() { return $this->_m_rest; }
}

namespace Kaitai\Struct\Tests\StrEncodingsDefault;

class Subtype extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\StrEncodingsDefault $parent = null, \Kaitai\Struct\Tests\StrEncodingsDefault $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_lenOf2 = $this->_io->readU2le();
        $this->_m_str2 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf2()), "UTF-8");
        $this->_m_lenOf3 = $this->_io->readU2le();
        $this->_m_str3 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf3()), "SJIS");
        $this->_m_lenOf4 = $this->_io->readU2le();
        $this->_m_str4 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenOf4()), "CP437");
    }
    protected $_m_lenOf2;
    protected $_m_str2;
    protected $_m_lenOf3;
    protected $_m_str3;
    protected $_m_lenOf4;
    protected $_m_str4;
    public function lenOf2() { return $this->_m_lenOf2; }
    public function str2() { return $this->_m_str2; }
    public function lenOf3() { return $this->_m_lenOf3; }
    public function str3() { return $this->_m_str3; }
    public function lenOf4() { return $this->_m_lenOf4; }
    public function str4() { return $this->_m_str4; }
}
