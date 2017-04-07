<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

/**
 * describes the first 4 header bytes of a TS Packet header
 */

namespace Kaitai\Struct\Tests;

class TsPacketHeader extends \Kaitai\Struct\Struct {

    public function __construct(\Kaitai\Struct\Stream $io, \Kaitai\Struct\Struct $parent = null, \Kaitai\Struct\Tests\TsPacketHeader $root = null) {
        parent::__construct($io, $parent, $root);
        $this->_parse();
    }
    private function _parse() {
        $this->_m_syncByte = $this->_io->readU1();
        $this->_m_transportErrorIndicator = $this->_io->readBitsInt(1) != 0;
        $this->_m_payloadUnitStartIndicator = $this->_io->readBitsInt(1) != 0;
        $this->_m_transportPriority = $this->_io->readBitsInt(1) != 0;
        $this->_m_pid = $this->_io->readBitsInt(13);
        $this->_m_transportScramblingControl = $this->_io->readBitsInt(2);
        $this->_m_adaptationFieldControl = $this->_io->readBitsInt(2);
        $this->_m_continuityCounter = $this->_io->readBitsInt(4);
        $this->_io->alignToByte();
        $this->_m_tsPacketRemain = $this->_io->readBytes(184);
    }
    protected $_m_syncByte;
    protected $_m_transportErrorIndicator;
    protected $_m_payloadUnitStartIndicator;
    protected $_m_transportPriority;
    protected $_m_pid;
    protected $_m_transportScramblingControl;
    protected $_m_adaptationFieldControl;
    protected $_m_continuityCounter;
    protected $_m_tsPacketRemain;
    public function syncByte() { return $this->_m_syncByte; }
    public function transportErrorIndicator() { return $this->_m_transportErrorIndicator; }
    public function payloadUnitStartIndicator() { return $this->_m_payloadUnitStartIndicator; }
    public function transportPriority() { return $this->_m_transportPriority; }
    public function pid() { return $this->_m_pid; }
    public function transportScramblingControl() { return $this->_m_transportScramblingControl; }
    public function adaptationFieldControl() { return $this->_m_adaptationFieldControl; }
    public function continuityCounter() { return $this->_m_continuityCounter; }
    public function tsPacketRemain() { return $this->_m_tsPacketRemain; }
}

namespace Kaitai\Struct\Tests\TsPacketHeader;

class AdaptationFieldControlEnum {
    const RESERVED = 0;
    const PAYLOAD_ONLY = 1;
    const ADAPTATION_FIELD_ONLY = 2;
    const ADAPTATION_FIELD_AND_PAYLOAD = 3;
}
