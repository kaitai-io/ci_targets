<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

/**
 * Another one-liner
 */

namespace Kaitai\Struct\Tests {
    class DocstringsDocref extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\DocstringsDocref $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readU1();
            $this->_m_two = $this->_io->readU1();
            $this->_m_three = $this->_io->readU1();
        }
        public function foo() {
            if ($this->_m_foo !== null)
                return $this->_m_foo;
            $this->_m_foo = true;
            return $this->_m_foo;
        }
        public function parseInst() {
            if ($this->_m_parseInst !== null)
                return $this->_m_parseInst;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_parseInst = $this->_io->readU1();
            $this->_io->seek($_pos);
            return $this->_m_parseInst;
        }
        public function one() { return $this->_m_one; }

        /**
         * Both doc and doc-ref are defined
         */
        public function two() { return $this->_m_two; }
        public function three() { return $this->_m_three; }
        protected $_m_foo;
        protected $_m_parseInst;
        protected $_m_one;
        protected $_m_two;
        protected $_m_three;
    }
}
