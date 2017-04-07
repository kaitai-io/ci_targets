<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class IfInstances extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\IfInstances $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
    }
    protected $_m_neverHappens;
    public function neverHappens() {
        if ($this->_m_neverHappens !== null)
            return $this->_m_neverHappens;
        if (false) {
            $_pos = $this->_io->pos();
            $this->_io->seek(100500);
            $this->_m_neverHappens = $this->_io->readU1();
            $this->_io->seek($_pos);
        }
        return $this->_m_neverHappens;
    }
}
