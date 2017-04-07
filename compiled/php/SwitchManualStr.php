<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class SwitchManualStr extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\SwitchManualStr $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_opcodes = [];
        while (!$this->_io->isEof()) {
            $this->_m_opcodes[] = new \Kaitai\Struct\Tests\SwitchManualStr\Opcode($this->_io, $this, $this->_root);
        }
    }
    protected $_m_opcodes;
    public function opcodes() { return $this->_m_opcodes; }
}

namespace Kaitai\Struct\Tests\SwitchManualStr;

class Opcode extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchManualStr $parent = null, \Kaitai\Struct\Tests\SwitchManualStr $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_code = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(1), "ASCII");
        switch ($this->code()) {
            case "I":
                $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualStr\Opcode\Intval($this->_io, $this, $this->_root);
                break;
            case "S":
                $this->_m_body = new \Kaitai\Struct\Tests\SwitchManualStr\Opcode\Strval($this->_io, $this, $this->_root);
                break;
        }
    }
    protected $_m_code;
    protected $_m_body;
    public function code() { return $this->_m_code; }
    public function body() { return $this->_m_body; }
}

namespace Kaitai\Struct\Tests\SwitchManualStr\Opcode;

class Intval extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchManualStr\Opcode $parent = null, \Kaitai\Struct\Tests\SwitchManualStr $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_value = $this->_io->readU1();
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}

namespace Kaitai\Struct\Tests\SwitchManualStr\Opcode;

class Strval extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchManualStr\Opcode $parent = null, \Kaitai\Struct\Tests\SwitchManualStr $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_value = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "ASCII");
    }
    protected $_m_value;
    public function value() { return $this->_m_value; }
}
