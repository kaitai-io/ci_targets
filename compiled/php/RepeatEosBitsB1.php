<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatEosBitsB1 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatEosBitsB1 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_bits = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_bits[] = $this->_io->readBitsIntBe(1) != 0;
                $i++;
            }
        }
        public function bits() { return $this->_m_bits; }
        protected $_m_bits;
    }
}
