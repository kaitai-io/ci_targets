<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class CastNested extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\CastNested $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_opcodes = [];
        $i = 0;
        while (!$this->_io->isEof()) {
            $this->_m_opcodes[] = new \Kaitai\Struct\Tests\CastNested\Opcode($this->_io, $this, $this->_root);
            $i++;
        }
    }
    protected $_m_opcodes0Str;
    public function opcodes0Str() {
        if ($this->_m_opcodes0Str !== null)
            return $this->_m_opcodes0Str;
        $this->_m_opcodes0Str = $this->opcodes()[0]->body();
        return $this->_m_opcodes0Str;
    }
    protected $_m_opcodes0StrValue;
    public function opcodes0StrValue() {
        if ($this->_m_opcodes0StrValue !== null)
            return $this->_m_opcodes0StrValue;
        $this->_m_opcodes0StrValue = $this->opcodes()[0]->body()->value();
        return $this->_m_opcodes0StrValue;
    }
    protected $_m_opcodes1Int;
    public function opcodes1Int() {
        if ($this->_m_opcodes1Int !== null)
            return $this->_m_opcodes1Int;
        $this->_m_opcodes1Int = $this->opcodes()[1]->body();
        return $this->_m_opcodes1Int;
    }
    protected $_m_opcodes1IntValue;
    public function opcodes1IntValue() {
        if ($this->_m_opcodes1IntValue !== null)
            return $this->_m_opcodes1IntValue;
        $this->_m_opcodes1IntValue = $this->opcodes()[1]->body()->value();
        return $this->_m_opcodes1IntValue;
    }
    protected $_m_opcodes;
    public function opcodes() { return $this->_m_opcodes; }
}

namespace Kaitai\Struct\Tests\CastNested;

class Opcode extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\CastNested $_parent = null, \Kaitai\Struct\Tests\CastNested $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_code = $this->_io->readU1();
        switch ($this->code()) {
            case 73:
                $this->_m_body = new \Kaitai\Struct\Tests\CastNested\Opcode\Intval($this->_io, $this, $this->_root);
                break;
            case 83:
                $this->_m_body = new \Kaitai\Struct\Tests\CastNested\Opcode\Strval($this->_io, $this, $this->_root);
                break;
        }
    }
    protected $_m_code;
    protected $_m_body;
    public function code() { return $this->_m_code; }
    public function body() { return $this->_m_body; }
}

namespace Kaitai\Struct\Tests\CastNested\Opcode;

class Intval extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\CastNested\Opcode $_parent = null, \Kaitai\Struct\Tests\CastNested $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_value = $this->_io->readU1();
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}

namespace Kaitai\Struct\Tests\CastNested\Opcode;

class Strval extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\CastNested\Opcode $_parent = null, \Kaitai\Struct\Tests\CastNested $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_value = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "ASCII");
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}
