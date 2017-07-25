<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class SwitchRepeatExpr extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\SwitchRepeatExpr $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_code = $this->_io->readU1();
        $this->_m_size = $this->_io->readU4le();
        $this->_m__raw_body = [];
        $this->_m_body = [];
        $n = 1;
        for ($i = 0; $i < $n; $i++) {
            switch ($this->code()) {
                case 17:
                    $this->_m__raw_body[] = $this->_io->readBytes($this->size());
                    $io = new \Kaitai\Struct\Stream(end($this->_m__raw_body));
                    $this->_m_body[] = new \Kaitai\Struct\Tests\SwitchRepeatExpr\One($io, $this, $this->_root);
                    break;
                case 34:
                    $this->_m__raw_body[] = $this->_io->readBytes($this->size());
                    $io = new \Kaitai\Struct\Stream(end($this->_m__raw_body));
                    $this->_m_body[] = new \Kaitai\Struct\Tests\SwitchRepeatExpr\Two($io, $this, $this->_root);
                    break;
                default:
                    $this->_m_body[] = $this->_io->readBytes($this->size());
                    break;
            }
        }
    }
    protected $_m_code;
    protected $_m_size;
    protected $_m_body;
    protected $_m__raw_body;
    public function code() { return $this->_m_code; }
    public function size() { return $this->_m_size; }
    public function body() { return $this->_m_body; }
    public function _raw_body() { return $this->_m__raw_body; }
}

namespace Kaitai\Struct\Tests\SwitchRepeatExpr;

class One extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchRepeatExpr $parent = null, \Kaitai\Struct\Tests\SwitchRepeatExpr $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_first = $this->_io->readBytesFull();
    }
    protected $_m_first;
    public function first() { return $this->_m_first; }
}

namespace Kaitai\Struct\Tests\SwitchRepeatExpr;

class Two extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Tests\SwitchRepeatExpr $parent = null, \Kaitai\Struct\Tests\SwitchRepeatExpr $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_second = $this->_io->readBytesFull();
    }
    protected $_m_second;
    public function second() { return $this->_m_second; }
}
