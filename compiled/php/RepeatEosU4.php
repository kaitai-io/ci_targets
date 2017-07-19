<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class RepeatEosU4 extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\RepeatEosU4 $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_read();
    }

    private function _read() {
        $this->_m_numbers = [];
        while (!$this->_io->isEof()) {
            $this->_m_numbers[] = $this->_io->readU4le();
        }
    }
    protected $_m_numbers;
    public function numbers() { return $this->_m_numbers; }
}
