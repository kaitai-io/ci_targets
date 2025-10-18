<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprFstring0 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprFstring0 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_seqStr = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(5), "ASCII");
            $this->_m_seqInt = $this->_io->readU1();
        }
        public function empty() {
            if ($this->_m_empty !== null)
                return $this->_m_empty;
            $this->_m_empty = "";
            return $this->_m_empty;
        }
        public function headAndInt() {
            if ($this->_m_headAndInt !== null)
                return $this->_m_headAndInt;
            $this->_m_headAndInt = "abc=" . strval($this->seqInt());
            return $this->_m_headAndInt;
        }
        public function headAndIntLiteral() {
            if ($this->_m_headAndIntLiteral !== null)
                return $this->_m_headAndIntLiteral;
            $this->_m_headAndIntLiteral = "abc=" . strval(123);
            return $this->_m_headAndIntLiteral;
        }
        public function headAndStr() {
            if ($this->_m_headAndStr !== null)
                return $this->_m_headAndStr;
            $this->_m_headAndStr = "abc=" . $this->seqStr();
            return $this->_m_headAndStr;
        }
        public function headAndStrLiteral() {
            if ($this->_m_headAndStrLiteral !== null)
                return $this->_m_headAndStrLiteral;
            $this->_m_headAndStrLiteral = "abc=" . "foo";
            return $this->_m_headAndStrLiteral;
        }
        public function literal() {
            if ($this->_m_literal !== null)
                return $this->_m_literal;
            $this->_m_literal = "abc";
            return $this->_m_literal;
        }
        public function literalWithEscapes() {
            if ($this->_m_literalWithEscapes !== null)
                return $this->_m_literalWithEscapes;
            $this->_m_literalWithEscapes = "abc\n\tt";
            return $this->_m_literalWithEscapes;
        }
        public function seqStr() { return $this->_m_seqStr; }
        public function seqInt() { return $this->_m_seqInt; }
        protected $_m_empty;
        protected $_m_headAndInt;
        protected $_m_headAndIntLiteral;
        protected $_m_headAndStr;
        protected $_m_headAndStrLiteral;
        protected $_m_literal;
        protected $_m_literalWithEscapes;
        protected $_m_seqStr;
        protected $_m_seqInt;
    }
}
