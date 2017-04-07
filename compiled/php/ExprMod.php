<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class ExprMod extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\ExprMod $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_intU = $this->_io->readU4le();
        $this->_m_intS = $this->_io->readS4le();
    }
    protected $_m_modPosConst;
    public function modPosConst() {
        if ($this->_m_modPosConst !== null)
            return $this->_m_modPosConst;
        $this->_m_modPosConst = \Kaitai\Struct\Stream::mod(9837, 13);
        return $this->_m_modPosConst;
    }
    protected $_m_modNegConst;
    public function modNegConst() {
        if ($this->_m_modNegConst !== null)
            return $this->_m_modNegConst;
        $this->_m_modNegConst = \Kaitai\Struct\Stream::mod(-9837, 13);
        return $this->_m_modNegConst;
    }
    protected $_m_modPosSeq;
    public function modPosSeq() {
        if ($this->_m_modPosSeq !== null)
            return $this->_m_modPosSeq;
        $this->_m_modPosSeq = \Kaitai\Struct\Stream::mod($this->intU(), 13);
        return $this->_m_modPosSeq;
    }
    protected $_m_modNegSeq;
    public function modNegSeq() {
        if ($this->_m_modNegSeq !== null)
            return $this->_m_modNegSeq;
        $this->_m_modNegSeq = \Kaitai\Struct\Stream::mod($this->intS(), 13);
        return $this->_m_modNegSeq;
    }
    protected $_m_intU;
    protected $_m_intS;
    public function intU() { return $this->_m_intU; }
    public function intS() { return $this->_m_intS; }
}
