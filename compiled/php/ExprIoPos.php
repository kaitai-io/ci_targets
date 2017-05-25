<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ExprIoPos extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ExprIoPos $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m__raw_substream1 = $this->_io->readBytes(16);
        $io = new \Kaitai\Struct\Stream($this->_m__raw_substream1);
        $this->_m_substream1 = new \Kaitai\Struct\Tests\ExprIoPos\AllPlusNumber($io, $this, $this->_root);
        $this->_m__raw_substream2 = $this->_io->readBytes(14);
        $io = new \Kaitai\Struct\Stream($this->_m__raw_substream2);
        $this->_m_substream2 = new \Kaitai\Struct\Tests\ExprIoPos\AllPlusNumber($io, $this, $this->_root);
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

namespace Kaitai\Struct\Tests\ExprIoPos;

class AllPlusNumber extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\ExprIoPos $parent = null, \Kaitai\Struct\Tests\ExprIoPos $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_myStr = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "UTF-8");
        $this->_m_body = $this->_io->readBytes((($this->_io()->size() - $this->_io()->pos()) - 2));
        $this->_m_number = $this->_io->readU2le();
    }
    protected $_m_myStr;
    protected $_m_body;
    protected $_m_number;
    public function myStr() { return $this->_m_myStr; }
    public function body() { return $this->_m_body; }
    public function number() { return $this->_m_number; }
}
