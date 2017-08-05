<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class SwitchCast extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\SwitchCast $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_opcodes = [];
        while (!$this->_io->isEof()) {
            $this->_m_opcodes[] = new \Kaitai\Struct\Tests\SwitchCast\Opcode($this->_io, $this, $this->_root);
        }
    }
    protected $_m_firstObj;
    public function firstObj() {
        if ($this->_m_firstObj !== null)
            return $this->_m_firstObj;
        $this->_m_firstObj = $this->opcodes()[0]->body();
        return $this->_m_firstObj;
    }
    protected $_m_secondVal;
    public function secondVal() {
        if ($this->_m_secondVal !== null)
            return $this->_m_secondVal;
        $this->_m_secondVal = $this->opcodes()[1]->body()->value();
        return $this->_m_secondVal;
    }
    protected $_m_errCast;
    public function errCast() {
        if ($this->_m_errCast !== null)
            return $this->_m_errCast;
        $this->_m_errCast = $this->opcodes()[2]->body();
        return $this->_m_errCast;
    }
    protected $_m_opcodes;
    public function opcodes() { return $this->_m_opcodes; }
}

namespace Kaitai\Struct\Tests\SwitchCast;

class Opcode extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\SwitchCast $_parent = null, \Kaitai\Struct\Tests\SwitchCast $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_code = $this->_io->readU1();
        switch ($this->code()) {
            case 73:
                $this->_m_body = new \Kaitai\Struct\Tests\SwitchCast\Intval($this->_io, $this, $this->_root);
                break;
            case 83:
                $this->_m_body = new \Kaitai\Struct\Tests\SwitchCast\Strval($this->_io, $this, $this->_root);
                break;
        }
    }
    protected $_m_code;
    protected $_m_body;
    public function code() { return $this->_m_code; }
    public function body() { return $this->_m_body; }
}

namespace Kaitai\Struct\Tests\SwitchCast;

class Intval extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\SwitchCast\Opcode $_parent = null, \Kaitai\Struct\Tests\SwitchCast $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_value = $this->_io->readU1();
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}

namespace Kaitai\Struct\Tests\SwitchCast;

class Strval extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\SwitchCast\Opcode $_parent = null, \Kaitai\Struct\Tests\SwitchCast $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_value = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "ASCII");
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}
