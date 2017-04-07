<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class FixedContents extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\FixedContents $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_normal = $this->_io->ensureFixedContents("\x50\x41\x43\x4B\x2D\x31");
        $this->_m_highBit8 = $this->_io->ensureFixedContents("\xFF\xFF");
    }
    protected $_m_normal;
    protected $_m_highBit8;
    public function normal() { return $this->_m_normal; }
    public function highBit8() { return $this->_m_highBit8; }
}
