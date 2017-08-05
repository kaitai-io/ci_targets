<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ProcessCoerceSwitch extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ProcessCoerceSwitch $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_bufType = $this->_io->readU1();
        $this->_m_flag = $this->_io->readU1();
        if ($this->flag() == 0) {
            switch ($this->bufType()) {
                case 0:
                    $this->_m__raw_bufUnproc = $this->_io->readBytes(4);
                    $io = new \Kaitai\Struct\Stream($this->_m__raw_bufUnproc);
                    $this->_m_bufUnproc = new \Kaitai\Struct\Tests\ProcessCoerceSwitch\Foo($io, $this, $this->_root);
                    break;
                default:
                    $this->_m_bufUnproc = $this->_io->readBytes(4);
                    break;
            }
        }
        if ($this->flag() != 0) {
            switch ($this->bufType()) {
                case 0:
                    $this->_m__raw__raw_bufProc = $this->_io->readBytes(4);
                    $this->_m__raw_bufProc = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_bufProc, 170);
                    $io = new \Kaitai\Struct\Stream($this->_m__raw_bufProc);
                    $this->_m_bufProc = new \Kaitai\Struct\Tests\ProcessCoerceSwitch\Foo($io, $this, $this->_root);
                    break;
                default:
                    $this->_m__raw_bufProc = $this->_io->readBytes(4);
                    $this->_m_bufProc = \Kaitai\Struct\Stream::processXorOne($this->_m__raw_bufProc, 170);
                    break;
            }
        }
    }
    protected $_m_buf;
    public function buf() {
        if ($this->_m_buf !== null)
            return $this->_m_buf;
        $this->_m_buf = ($this->flag() == 0 ? $this->bufUnproc() : $this->bufProc());
        return $this->_m_buf;
    }
    protected $_m_bufType;
    protected $_m_flag;
    protected $_m_bufUnproc;
    protected $_m_bufProc;
    protected $_m__raw_bufUnproc;
    protected $_m__raw__raw_bufProc;
    protected $_m__raw_bufProc;
    public function bufType() { return $this->_m_bufType; }
    public function flag() { return $this->_m_flag; }
    public function bufUnproc() { return $this->_m_bufUnproc; }
    public function bufProc() { return $this->_m_bufProc; }
    public function _raw_bufUnproc() { return $this->_m__raw_bufUnproc; }
    public function _raw__raw_bufProc() { return $this->_m__raw__raw_bufProc; }
    public function _raw_bufProc() { return $this->_m__raw_bufProc; }
}

namespace Kaitai\Struct\Tests\ProcessCoerceSwitch;

class Foo extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ProcessCoerceSwitch $_parent = null, \Kaitai\Struct\Tests\ProcessCoerceSwitch $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_bar = $this->_io->readBytes(4);
    }
    protected $_m_bar;
    public function bar() { return $this->_m_bar; }
}
