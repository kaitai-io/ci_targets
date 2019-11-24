<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ProcessRepeatUsertype extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ProcessRepeatUsertype $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m__raw_blocks = [];
        $this->_m_blocks = [];
        $n = 2;
        for ($i = 0; $i < $n; $i++) {
            $this->_m__raw__raw_blocks[] = $this->_io->readBytes(5);
            $this->_m__raw_blocks = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_blocks, 158);
            $_io__raw_blocks = new \Kaitai\Struct\Stream(end($this->_m__raw_blocks));
            $this->_m_blocks[] = new \Kaitai\Struct\Tests\ProcessRepeatUsertype\Block($_io__raw_blocks, $this, $this->_root);
        }
    }
    protected $_m_blocks;
    protected $_m__raw_blocks;
    protected $_m__raw__raw_blocks;
    public function blocks() { return $this->_m_blocks; }
    public function _raw_blocks() { return $this->_m__raw_blocks; }
    public function _raw__raw_blocks() { return $this->_m__raw__raw_blocks; }
}

namespace Kaitai\Struct\Tests\ProcessRepeatUsertype;

class Block extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ProcessRepeatUsertype $_parent = null, \Kaitai\Struct\Tests\ProcessRepeatUsertype $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_a = $this->_io->readS4le();
        $this->_m_b = $this->_io->readS1();
    }
    protected $_m_a;
    protected $_m_b;
    public function a() { return $this->_m_a; }
    public function b() { return $this->_m_b; }
}
