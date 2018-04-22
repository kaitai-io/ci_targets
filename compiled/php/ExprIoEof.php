<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ExprIoEof extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprIoEof $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m__raw_substream1 = $this->_io->readBytes(4);
        $io = new \Kaitai\Struct\Stream($this->_m__raw_substream1);
        $this->_m_substream1 = new \Kaitai\Struct\Tests\ExprIoEof\OneOrTwo($io, $this, $this->_root);
        $this->_m__raw_substream2 = $this->_io->readBytes(8);
        $io = new \Kaitai\Struct\Stream($this->_m__raw_substream2);
        $this->_m_substream2 = new \Kaitai\Struct\Tests\ExprIoEof\OneOrTwo($io, $this, $this->_root);
    }
    protected $_m_substream1;
    protected $_m_substream2;
    protected $_m__raw_substream1;
    protected $_m__raw_substream2;
    public function substream1() { return $this->_m_substream1; }
    public function substream2() { return $this->_m_substream2; }
    public function _raw_substream1() { return $this->_m__raw_substream1; }
    public function _raw_substream2() { return $this->_m__raw_substream2; }
}

namespace Kaitai\Struct\Tests\ExprIoEof;

class OneOrTwo extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ExprIoEof $_parent = null, \Kaitai\Struct\Tests\ExprIoEof $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_one = $this->_io->readU4le();
        if (!($this->_io()->isEof())) {
            $this->_m_two = $this->_io->readU4le();
        }
    }
    protected $_m_reflectEof;
    public function reflectEof() {
        if ($this->_m_reflectEof !== null)
            return $this->_m_reflectEof;
        $this->_m_reflectEof = $this->_io()->isEof();
        return $this->_m_reflectEof;
    }
    protected $_m_one;
    protected $_m_two;
    public function one() { return $this->_m_one; }
    public function two() { return $this->_m_two; }
}
