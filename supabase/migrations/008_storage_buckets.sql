-- Storage buckets
INSERT INTO storage.buckets (id, name, public) VALUES
('property-photos', 'property-photos', true),
('property-documents', 'property-documents', false),
('bidder-documents', 'bidder-documents', false),
('seller-agreements', 'seller-agreements', false)
ON CONFLICT (id) DO NOTHING;

-- Storage RLS Policies
CREATE POLICY "Public read access to property photos" ON storage.objects FOR SELECT USING (bucket_id = 'property-photos');
CREATE POLICY "Admin/Auctioneer write access to property photos" ON storage.objects FOR INSERT WITH CHECK (
  bucket_id = 'property-photos' AND EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

CREATE POLICY "Admin/Auctioneer read/write access to property documents" ON storage.objects FOR ALL USING (
  bucket_id = 'property-documents' AND EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);

CREATE POLICY "Bidder read own documents, Admin/Auctioneer read all" ON storage.objects FOR SELECT USING (
  bucket_id = 'bidder-documents' AND (
    auth.uid() = owner OR EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
  )
);
CREATE POLICY "Bidder write own documents" ON storage.objects FOR INSERT WITH CHECK (
  bucket_id = 'bidder-documents' AND auth.uid() = owner
);

CREATE POLICY "Seller read own agreements, Admin/Auctioneer read all" ON storage.objects FOR SELECT USING (
  bucket_id = 'seller-agreements' AND (
    auth.uid() = owner OR EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
  )
);
CREATE POLICY "Admin/Auctioneer write agreements" ON storage.objects FOR INSERT WITH CHECK (
  bucket_id = 'seller-agreements' AND EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role IN ('admin', 'auctioneer'))
);
