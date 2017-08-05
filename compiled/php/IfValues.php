<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class IfValues extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\IfValues $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_codes = [];
        $n = 3;
        for ($i = 0; $i < $n; $i++) {
            $this->_m_codes[] = new \Kaitai\Struct\Tests\IfValues\Code($this->_io, $this, $this->_root);
        }
    }
    protected $_m_codes;
    public function codes() { return $this->_m_codes; }
}

namespace Kaitai\Struct\Tests\IfValues;

class Code extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\IfValues $_parent = null, \Kaitai\Struct\Tests\IfValues $_root = null) {
        parent::__construct($_io, $_parent, $_root);
        $this->_read();
    }

    private function _read() {
        $this->_m_opcode = $this->_io->readU1();
    }
    protected $_m_halfOpcode;
    public function halfOpcode() {
        if ($this->_m_halfOpcode !== null)
            return $this->_m_halfOpcode;
        if (\Kaitai\Struct\Stream::mod($this->opcode(), 2) == 0) {
            $this->_m_halfOpcode = intval($this->opcode() / 2);
        }
        return $this->_m_halfOpcode;
    }
    protected $_m_opcode;
    public function opcode() { return $this->_m_opcode; }
}
