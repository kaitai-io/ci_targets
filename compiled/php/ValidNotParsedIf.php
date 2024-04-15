<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidNotParsedIf extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidNotParsedIf $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            if (false) {
                $this->_m_notParsed = $this->_io->readU1();
                if (!($this->notParsed() == 42)) {
                    throw new \Kaitai\Struct\Error\ValidationNotEqualError(42, $this->notParsed(), $this->_io(), "/seq/0");
                }
            }
            if (true) {
                $this->_m_parsed = $this->_io->readU1();
                if (!($this->parsed() == 80)) {
                    throw new \Kaitai\Struct\Error\ValidationNotEqualError(80, $this->parsed(), $this->_io(), "/seq/1");
                }
            }
        }
        protected $_m_notParsed;
        protected $_m_parsed;
        public function notParsed() { return $this->_m_notParsed; }
        public function parsed() { return $this->_m_parsed; }
    }
}
