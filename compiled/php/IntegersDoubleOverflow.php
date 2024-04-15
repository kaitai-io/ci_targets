<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class IntegersDoubleOverflow extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\IntegersDoubleOverflow $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_signedSafeMinBe = $this->_io->readS8be();
            $this->_m_signedSafeMinLe = $this->_io->readS8le();
            $this->_m_signedSafeMaxBe = $this->_io->readS8be();
            $this->_m_signedSafeMaxLe = $this->_io->readS8le();
            $this->_m_signedUnsafeNegBe = $this->_io->readS8be();
            $this->_m_signedUnsafeNegLe = $this->_io->readS8le();
            $this->_m_signedUnsafePosBe = $this->_io->readS8be();
            $this->_m_signedUnsafePosLe = $this->_io->readS8le();
        }
        protected $_m_unsignedSafeMaxBe;
        public function unsignedSafeMaxBe() {
            if ($this->_m_unsignedSafeMaxBe !== null)
                return $this->_m_unsignedSafeMaxBe;
            $_pos = $this->_io->pos();
            $this->_io->seek(16);
            $this->_m_unsignedSafeMaxBe = $this->_io->readU8be();
            $this->_io->seek($_pos);
            return $this->_m_unsignedSafeMaxBe;
        }
        protected $_m_unsignedSafeMaxLe;
        public function unsignedSafeMaxLe() {
            if ($this->_m_unsignedSafeMaxLe !== null)
                return $this->_m_unsignedSafeMaxLe;
            $_pos = $this->_io->pos();
            $this->_io->seek(24);
            $this->_m_unsignedSafeMaxLe = $this->_io->readU8le();
            $this->_io->seek($_pos);
            return $this->_m_unsignedSafeMaxLe;
        }
        protected $_m_unsignedUnsafePosBe;
        public function unsignedUnsafePosBe() {
            if ($this->_m_unsignedUnsafePosBe !== null)
                return $this->_m_unsignedUnsafePosBe;
            $_pos = $this->_io->pos();
            $this->_io->seek(48);
            $this->_m_unsignedUnsafePosBe = $this->_io->readU8be();
            $this->_io->seek($_pos);
            return $this->_m_unsignedUnsafePosBe;
        }
        protected $_m_unsignedUnsafePosLe;
        public function unsignedUnsafePosLe() {
            if ($this->_m_unsignedUnsafePosLe !== null)
                return $this->_m_unsignedUnsafePosLe;
            $_pos = $this->_io->pos();
            $this->_io->seek(56);
            $this->_m_unsignedUnsafePosLe = $this->_io->readU8le();
            $this->_io->seek($_pos);
            return $this->_m_unsignedUnsafePosLe;
        }
        protected $_m_signedSafeMinBe;
        protected $_m_signedSafeMinLe;
        protected $_m_signedSafeMaxBe;
        protected $_m_signedSafeMaxLe;
        protected $_m_signedUnsafeNegBe;
        protected $_m_signedUnsafeNegLe;
        protected $_m_signedUnsafePosBe;
        protected $_m_signedUnsafePosLe;
        public function signedSafeMinBe() { return $this->_m_signedSafeMinBe; }
        public function signedSafeMinLe() { return $this->_m_signedSafeMinLe; }
        public function signedSafeMaxBe() { return $this->_m_signedSafeMaxBe; }
        public function signedSafeMaxLe() { return $this->_m_signedSafeMaxLe; }
        public function signedUnsafeNegBe() { return $this->_m_signedUnsafeNegBe; }
        public function signedUnsafeNegLe() { return $this->_m_signedUnsafeNegLe; }
        public function signedUnsafePosBe() { return $this->_m_signedUnsafePosBe; }
        public function signedUnsafePosLe() { return $this->_m_signedUnsafePosLe; }
    }
}
