// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidNotParsedIf : KaitaiStruct
    {
        public static ValidNotParsedIf FromFile(string fileName)
        {
            return new ValidNotParsedIf(new KaitaiStream(fileName));
        }

        public ValidNotParsedIf(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidNotParsedIf p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            if (false) {
                _notParsed = m_io.ReadU1();
                if (!(NotParsed == 42))
                {
                    throw new ValidationNotEqualError(42, NotParsed, M_Io, "/seq/0");
                }
            }
            if (true) {
                _parsed = m_io.ReadU1();
                if (!(Parsed == 80))
                {
                    throw new ValidationNotEqualError(80, Parsed, M_Io, "/seq/1");
                }
            }
        }
        private byte? _notParsed;
        private byte? _parsed;
        private ValidNotParsedIf m_root;
        private KaitaiStruct m_parent;
        public byte? NotParsed { get { return _notParsed; } }
        public byte? Parsed { get { return _parsed; } }
        public ValidNotParsedIf M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
