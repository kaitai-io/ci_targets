<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ValidFailInst extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidFailInst $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        if ($this->inst() >= 0) {
            $this->_m_a = $this->_io->readU1();
        }
    }
    protected $_m_inst;
    public function inst() {
        if ($this->_m_inst !== null)
            return $this->_m_inst;
        $_pos = $this->_io->pos();
        $this->_io->seek(5);
        $this->_m_inst = $this->_io->readU1();
        $this->_io->seek($_pos);
        return $this->_m_inst;
    }
    protected $_m_a;
    public function a() { return $this->_m_a; }
}
