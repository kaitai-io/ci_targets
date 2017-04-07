<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class RepeatNStrz extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\RepeatNStrz $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_qty = $this->_io->readU4le();
        $this->_m_lines = [];
        $n = $this->qty();
        for ($i = 0; $i < $n; $i++) {
            $this->_m_lines[] = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(0, false, true, true), "UTF-8");
        }
    }
    protected $_m_qty;
    protected $_m_lines;
    public function qty() { return $this->_m_qty; }
    public function lines() { return $this->_m_lines; }
}
