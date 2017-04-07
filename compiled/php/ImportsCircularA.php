<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ImportsCircularA extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ImportsCircularA $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_code = $this->_io->readU1();
        $this->_m_two = new \Kaitai\Struct\Tests\ImportsCircularB($this->_io);
    }
    protected $_m_code;
    protected $_m_two;
    public function code() { return $this->_m_code; }
    public function two() { return $this->_m_two; }
}
