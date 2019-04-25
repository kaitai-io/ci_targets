<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class SwitchManualEnumInvalid extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\SwitchManualEnumInvalid $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_opcodes = [];
        $i = 0;
        while (!$this->_io->isEof()) {
            $this->_m_opcodes[] = new \Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode($this->_io, $this, $this->_root);
            $i++;
        }
    }
    protected $_m_opcodes;
    public function opcodes() { return $this->_m_opcodes; }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalid;

class Opcode extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\SwitchManualEnumInvalid $_parent = null, \Kaitai\Struct\Tests\SwitchManualEnumInvalid $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_code = $this->_io->readU1();
        switch ($this->code()) {
            case \Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode\CodeEnum::INTVAL:
                $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode\Intval($this->_io, $this, $this->_root);
                break;
            case \Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode\CodeEnum::STRVAL:
                $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode\Strval($this->_io, $this, $this->_root);
                break;
        }
    }
    protected $_m_code;
    protected $_m_body;
    public function code() { return $this->_m_code; }
    public function body() { return $this->_m_body; }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode;

class Intval extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode $_parent = null, \Kaitai\Struct\Tests\SwitchManualEnumInvalid $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_value = $this->_io->readU1();
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode;

class Strval extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode $_parent = null, \Kaitai\Struct\Tests\SwitchManualEnumInvalid $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_value = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "ASCII");
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}

namespace Kaitai\Struct\Tests\SwitchManualEnumInvalid\Opcode;

class CodeEnum {
    const INTVAL = 73;
    const STRVAL = 83;
}
