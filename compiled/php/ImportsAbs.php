<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ImportsAbs extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ImportsAbs $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_len = new \Kaitai\Struct\Tests\VlqBase128Le($this->_io);
        $this->_m_body = $this->_io->readBytes($this->len()->value());
    }
    protected $_m_len;
    protected $_m_body;
    public function len() { return $this->_m_len; }
    public function body() { return $this->_m_body; }
}
