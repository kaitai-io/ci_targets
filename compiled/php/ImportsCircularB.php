<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ImportsCircularB extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ImportsCircularB $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_initial = $this->_io->readU1();
        if ($this->initial() == 65) {
            $this->_m_backRef = new \Kaitai\Struct\Tests\ImportsCircularA($this->_io);
        }
    }
    protected $_m_initial;
    protected $_m_backRef;
    public function initial() { return $this->_m_initial; }
    public function backRef() { return $this->_m_backRef; }
}
