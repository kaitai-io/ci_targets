<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class Expr0 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\Expr0 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenOf1 = $this->_io->readU2le();
        }
        protected $_m_mustBeAbc123;
        public function mustBeAbc123() {
            if ($this->_m_mustBeAbc123 !== null)
                return $this->_m_mustBeAbc123;
            $this->_m_mustBeAbc123 = "abc" . "123";
            return $this->_m_mustBeAbc123;
        }
        protected $_m_mustBeF7;
        public function mustBeF7() {
            if ($this->_m_mustBeF7 !== null)
                return $this->_m_mustBeF7;
            $this->_m_mustBeF7 = 7 + 240;
            return $this->_m_mustBeF7;
        }
        protected $_m_lenOf1;
        public function lenOf1() { return $this->_m_lenOf1; }
    }
}
