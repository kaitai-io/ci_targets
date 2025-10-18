// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosBytesPad : KaitaiStruct
    {
        public static RepeatEosBytesPad FromFile(string fileName)
        {
            return new RepeatEosBytesPad(new KaitaiStream(fileName));
        }

        public RepeatEosBytesPad(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatEosBytesPad p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<byte[]>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _records.Add(KaitaiStream.BytesStripRight(m_io.ReadBytes(5), 170));
                    i++;
                }
            }
        }
        public List<byte[]> Records { get { return _records; } }
        public RepeatEosBytesPad M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<byte[]> _records;
        private RepeatEosBytesPad m_root;
        private KaitaiStruct m_parent;
    }
}
