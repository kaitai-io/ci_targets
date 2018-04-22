<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class SwitchIntegers2 extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\SwitchIntegers2 $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_code = $this->_io->readU1();
        switch ($this->code()) {
            case 1:
                $this->_m_len = $this->_io->readU1();
                break;
            case 2:
                $this->_m_len = $this->_io->readU2le();
                break;
            case 4:
                $this->_m_len = $this->_io->readU4le();
                break;
            case 8:
                $this->_m_len = $this->_io->readU8le();
                break;
        }
        $this->_m_ham = $this->_io->readBytes($this->len());
        if ($this->len() > 3) {
            $this->_m_padding = $this->_io->readU1();
        }
    }
    protected $_m_lenModStr;
    public function lenModStr() {
        if ($this->_m_lenModStr !== null)
            return $this->_m_lenModStr;
        $this->_m_lenModStr = strval((($this->len() * 2) - 1));
        return $this->_m_lenModStr;
    }
    protected $_m_code;
    protected $_m_len;
    protected $_m_ham;
    protected $_m_padding;
    public function code() { return $this->_m_code; }
    public function len() { return $this->_m_len; }
    public function ham() { return $this->_m_ham; }
    public function padding() { return $this->_m_padding; }
}
