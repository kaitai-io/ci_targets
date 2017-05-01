<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class SwitchMultiBoolOps extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\SwitchMultiBoolOps $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_opcodes = [];
        while (!$this->_io->isEof()) {
            $this->_m_opcodes[] = new \Kaitai\Struct\Tests\SwitchMultiBoolOps\Opcode($this->_io, $this, $this->_root);
        }
    }
    protected $_m_opcodes;
    public function opcodes() { return $this->_m_opcodes; }
}

namespace Kaitai\Struct\Tests\SwitchMultiBoolOps;

class Opcode extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchMultiBoolOps $parent = null, \Kaitai\Struct\Tests\SwitchMultiBoolOps $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_code = $this->_io->readU1();
        switch (( (($this->code() > 0) && ($this->code() <= 8) && (($this->code() != 10 ? true : false)))  ? $this->code() : 0)) {
            case 1:
                $this->_m_body = $this->_io->readU1();
                break;
            case 2:
                $this->_m_body = $this->_io->readU2le();
                break;
            case 4:
                $this->_m_body = $this->_io->readU4le();
                break;
            case 8:
                $this->_m_body = $this->_io->readU8le();
                break;
        }
    }
    protected $_m_code;
    protected $_m_body;
    public function code() { return $this->_m_code; }
    public function body() { return $this->_m_body; }
}
