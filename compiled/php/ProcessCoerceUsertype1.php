<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ProcessCoerceUsertype1 extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ProcessCoerceUsertype1 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_records = [];
        $n = 2;
        for ($i = 0; $i < $n; $i++) {
            $this->_m_records[] = new \Kaitai\Struct\Tests\ProcessCoerceUsertype1\Record($this->_io, $this, $this->_root);
        }
    }
    protected $_m_records;
    public function records() { return $this->_m_records; }
}

namespace Kaitai\Struct\Tests\ProcessCoerceUsertype1;

class Record extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\ProcessCoerceUsertype1 $parent = null, \Kaitai\Struct\Tests\ProcessCoerceUsertype1 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_flag = $this->_io->readU1();
        if ($this->flag() == 0) {
            $this->_m__raw_bufUnproc = $this->_io->readBytes(4);
            $io = new \Kaitai\Struct\Stream($this->_m__raw_bufUnproc);
            $this->_m_bufUnproc = new \Kaitai\Struct\Tests\ProcessCoerceUsertype1\Foo($io, $this, $this->_root);
        }
        if ($this->flag() != 0) {
            $this->_m__raw__raw_bufProc = $this->_io->readBytes(4);
            $this->_m__raw_bufProc = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_bufProc, 170);
            $io = new \Kaitai\Struct\Stream($this->_m__raw_bufProc);
            $this->_m_bufProc = new \Kaitai\Struct\Tests\ProcessCoerceUsertype1\Foo($io, $this, $this->_root);
        }
    }
    protected $_m_buf;
    public function buf() {
        if ($this->_m_buf !== null)
            return $this->_m_buf;
        $this->_m_buf = ($this->flag() == 0 ? $this->bufUnproc() : $this->bufProc());
        return $this->_m_buf;
    }
    protected $_m_flag;
    protected $_m_bufUnproc;
    protected $_m_bufProc;
    protected $_m__raw_bufUnproc;
    protected $_m__raw__raw_bufProc;
    protected $_m__raw_bufProc;
    public function flag() { return $this->_m_flag; }
    public function bufUnproc() { return $this->_m_bufUnproc; }
    public function bufProc() { return $this->_m_bufProc; }
    public function _raw_bufUnproc() { return $this->_m__raw_bufUnproc; }
    public function _raw__raw_bufProc() { return $this->_m__raw__raw_bufProc; }
    public function _raw_bufProc() { return $this->_m__raw_bufProc; }
}

namespace Kaitai\Struct\Tests\ProcessCoerceUsertype1;

class Foo extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\ProcessCoerceUsertype1\Record $parent = null, \Kaitai\Struct\Tests\ProcessCoerceUsertype1 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_value = $this->_io->readU4le();
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}
