<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EofExceptionBitsLe2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\EofExceptionBitsLe2 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
        }

        public function _read() {
            $this->_m_preBits = $this->_io->readBitsIntLe(8);
            $this->_m_failBits = $this->_io->readBitsIntLe(17);
        }
        protected $_m_preBits;
        protected $_m_failBits;
        public function preBits() { return $this->_m_preBits; }
        public function failBits() { return $this->_m_failBits; }
    }
}
