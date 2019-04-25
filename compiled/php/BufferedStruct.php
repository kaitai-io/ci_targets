<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class BufferedStruct extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\BufferedStruct $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_len1 = $this->_io->readU4le();
        $this->_m__raw_block1 = $this->_io->readBytes($this->len1());
        $_io__raw_block1 = new \Kaitai\Struct\Stream($this->_m__raw_block1);
        $this->_m_block1 = new \Kaitai\Struct\Tests\BufferedStruct\Block($_io__raw_block1, $this, $this->_root);
        $this->_m_len2 = $this->_io->readU4le();
        $this->_m__raw_block2 = $this->_io->readBytes($this->len2());
        $_io__raw_block2 = new \Kaitai\Struct\Stream($this->_m__raw_block2);
        $this->_m_block2 = new \Kaitai\Struct\Tests\BufferedStruct\Block($_io__raw_block2, $this, $this->_root);
        $this->_m_finisher = $this->_io->readU4le();
    }
    protected $_m_len1;
    protected $_m_block1;
    protected $_m_len2;
    protected $_m_block2;
    protected $_m_finisher;
    protected $_m__raw_block1;
    protected $_m__raw_block2;
    public function len1() { return $this->_m_len1; }
    public function block1() { return $this->_m_block1; }
    public function len2() { return $this->_m_len2; }
    public function block2() { return $this->_m_block2; }
    public function finisher() { return $this->_m_finisher; }
    public function _raw_block1() { return $this->_m__raw_block1; }
    public function _raw_block2() { return $this->_m__raw_block2; }
}

namespace Kaitai\Struct\Tests\BufferedStruct;

class Block extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\BufferedStruct $_parent = null, \Kaitai\Struct\Tests\BufferedStruct $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_number1 = $this->_io->readU4le();
        $this->_m_number2 = $this->_io->readU4le();
    }
    protected $_m_number1;
    protected $_m_number2;
    public function number1() { return $this->_m_number1; }
    public function number2() { return $this->_m_number2; }
}
