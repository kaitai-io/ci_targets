// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ProcessBytesPadTerm : KaitaiStruct
    {
        public static ProcessBytesPadTerm FromFile(string fileName)
        {
            return new ProcessBytesPadTerm(new KaitaiStream(fileName));
        }

        public ProcessBytesPadTerm(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessBytesPadTerm p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_strPad = KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 64);
            _strPad = m_io.ProcessXor(__raw_strPad, 21);
            __raw_strTerm = KaitaiStream.BytesTerminate(m_io.ReadBytes(20), 64, false);
            _strTerm = m_io.ProcessXor(__raw_strTerm, 21);
            __raw_strTermAndPad = KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(20), 43), 64, false);
            _strTermAndPad = m_io.ProcessXor(__raw_strTermAndPad, 21);
            __raw_strTermInclude = KaitaiStream.BytesTerminate(m_io.ReadBytes(20), 64, true);
            _strTermInclude = m_io.ProcessXor(__raw_strTermInclude, 21);
        }
        private byte[] _strPad;
        private byte[] _strTerm;
        private byte[] _strTermAndPad;
        private byte[] _strTermInclude;
        private ProcessBytesPadTerm m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_strPad;
        private byte[] __raw_strTerm;
        private byte[] __raw_strTermAndPad;
        private byte[] __raw_strTermInclude;
        public byte[] StrPad { get { return _strPad; } }
        public byte[] StrTerm { get { return _strTerm; } }
        public byte[] StrTermAndPad { get { return _strTermAndPad; } }
        public byte[] StrTermInclude { get { return _strTermInclude; } }
        public ProcessBytesPadTerm M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawStrPad { get { return __raw_strPad; } }
        public byte[] M_RawStrTerm { get { return __raw_strTerm; } }
        public byte[] M_RawStrTermAndPad { get { return __raw_strTermAndPad; } }
        public byte[] M_RawStrTermInclude { get { return __raw_strTermInclude; } }
    }
}
