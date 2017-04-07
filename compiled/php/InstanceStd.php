<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class InstanceStd extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\InstanceStd $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
    }
    protected $_m_header;
    public function header() {
        if ($this->_m_header !== null)
            return $this->_m_header;
        $_pos = $this->_io->pos();
        $this->_io->seek(2);
        $this->_m_header = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(5), "ASCII");
        $this->_io->seek($_pos);
        return $this->_m_header;
    }
}
