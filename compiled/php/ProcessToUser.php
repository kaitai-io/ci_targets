<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ProcessToUser extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ProcessToUser $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m__raw__raw_buf1 = $this->_io->readBytes(5);
        $this->_m__raw_buf1 = \Kaitai\Struct\Stream::processRotateLeft($this->_m__raw__raw_buf1, 3, 1);
        $io = new \Kaitai\Struct\Stream($this->_m__raw_buf1);
        $this->_m_buf1 = new \Kaitai\Struct\Tests\ProcessToUser\JustStr($io, $this, $this->_root);
    }
    protected $_m_buf1;
    protected $_m__raw__raw_buf1;
    protected $_m__raw_buf1;
    public function buf1() { return $this->_m_buf1; }
    public function _raw__raw_buf1() { return $this->_m__raw__raw_buf1; }
    public function _raw_buf1() { return $this->_m__raw_buf1; }
}

namespace Kaitai\Struct\Tests\ProcessToUser;

class JustStr extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\ProcessToUser $parent = null, \Kaitai\Struct\Tests\ProcessToUser $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_str = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesFull(), "UTF-8");
    }
    protected $_m_str;
    public function str() { return $this->_m_str; }
}
